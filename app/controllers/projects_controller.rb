class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.position = @user.projects.length + 1
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

  def destroy
    @project.destroy
    redirect_to myportfolios_path
  end

  def sort
    @user = current_user

    @project_sorted = params[:projectOrdered].split(",").map{ |id| Project.find(id.to_i) }

    @project_sorted.each_with_index do |p, index|
      p.position = index + 1
      p.save
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
