class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to myportfolios_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to myportfolios_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:photo, :title, :description, :url)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
