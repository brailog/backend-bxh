class ProjectsbycompanyidController < ApplicationController

  def index 
    @projectsbycompanyid = Project.joins(:company).where(projects: {company_id: 100})
    render json: @projectsbycompanyid
  end

  def show
  end
end
