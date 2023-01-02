class MyportfoliosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @projects = Project.all
    @stacks = Stack.all

    if user_signed_in?
      @user = current_user
      @projects = @user.projects.order(:position)
      @stacks = @user.stacks.order(:position)
    else
      @projects = @projects.order(:position)
      @stacks = @stacks.order(:position)
    end

  end

  def carousel
  end
end
