# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show update destroy]

  # GET /projects
  def index
    # binding.pry
    if !params[:company_id].nil?
      @projectsbycompanyid = Project.joins(:company).where(projects: { company_id: params[:company_id] })
      render json: @projectsbycompanyid
    else
      @projects = Project.all
      render json: @projects
    end
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create

    @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    # binding.pry
    @project = Project.find(params[:id])
<<<<<<< HEAD
    raise "ID NOT FOUND"  if @project.company_id != params["company_id"].to_i
=======
    raise "ID NOT FOUND"  if @project.company_id != params["company_id"].to_i and params["company_id"] != nil
>>>>>>> 03287047e5de7f409c2c6b74fff3b0ffebe8384e
  end

  # Only allow a trusted parameter "white list" through.
  def project_params
    # binding.pry
    params.require(:project).permit(:name, :description, :link1, :link2, :category, :company_id)
  end
end
