class BugRequestsController < ApplicationController
  before_action :set_bug_request, only: [:show, :update, :destroy]

  # GET /bug_requests
  def index
    if !params[:project_id].nil?
      @bug_requests = BugRequest.joins(:project).where(bug_requests: { project_id: params[:project_id]})
      render json: @bug_requests
    else
      @bug_requests = BugRequest.all
      render json: @bug_requests
    end
  end


  # GET /bug_requests/1
  def show
    if @bug_request.project_id == params["project_id"].to_i
      render json: @bug_request
    else
      render json: @bug_request.errors, status: :not_found
    end
  end

  # POST /bug_requests
  def create
    @bug_request = BugRequest.new(bug_request_params)

    if @bug_request.save
      render json: @bug_request, status: :created, location: @bug_request
    else
      render json: @bug_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bug_requests/1
  def update
    if @bug_request.update(bug_request_params)
      render json: @bug_request
    else
      render json: @bug_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bug_requests/1
  def destroy
    @bug_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bug_request
      @bug_request = BugRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bug_request_params
      params.require(:bug_request).permit(:title, :category, :repository_link, :live_link, :status, :project_id, :hunter_id)
    end
end
