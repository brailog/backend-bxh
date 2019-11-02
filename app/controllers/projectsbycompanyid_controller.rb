class ProjectsbycompanyidController < ApplicationController

  def index 
  end

  def show
    @projectsbycompanyid = Project.joins(:company).where(projects: {company_id: :id})
    render json: @projectsbycompanyid
  end
end
