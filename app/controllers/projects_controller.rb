class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save!
      redirect_to myportfolios_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:photo, :title, :description, :url, :user_id, :myportfolio_id)
  end
end
