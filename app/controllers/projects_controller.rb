class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def index
  end

  def new
    @project = Project.new
  end

  def create
     @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
      # nothing, yet
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :description)
  end

end