class HuntersController < ApplicationController
  before_action :set_hunter, only: [:show, :update, :destroy]

  # GET /hunters
  def index
    @hunters = Hunter.all

    render json: @hunters
  end

  # GET /hunters/1
  def show
    render json: @hunter
  end

  # POST /hunters
  def create
    @hunter = Hunter.new(hunter_params)

    if @hunter.save
      render json: @hunter, status: :created, location: @hunter
    else
      render json: @hunter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hunters/1
  def update
    if @hunter.update(hunter_params)
      render json: @hunter
    else
      render json: @hunter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hunters/1
  def destroy
    @hunter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hunter
      @hunter = Hunter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hunter_params
      params.require(:hunter).permit(:name, :description, :cnpj, :phone, :link1)
    end
end
