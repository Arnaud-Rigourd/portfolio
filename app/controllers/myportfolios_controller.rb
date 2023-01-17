class MyportfoliosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: :awwwardsone

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

  def awwwardsone
  end

  private

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end
end
