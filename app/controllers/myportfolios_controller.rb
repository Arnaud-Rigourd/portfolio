class MyportfoliosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @projects = Project.all
  end

  def carousel
  end
end
