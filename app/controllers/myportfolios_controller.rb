class MyportfoliosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if user_signed_in?
      @user = current_user
    end

    @projects = Project.all
    @projects = @user.projects.order(:position)

    @stacks = Stack.all
    @stacks = @user.stacks.order(:position)
  end

  def carousel
  end
end
