class StacksController < ApplicationController
  before_action :set_stack, only: [:edit, :update, :destroy]

  def new
    @stack = Stack.new
  end

  def create
    @stack = Stack.new(stack_params)
    @stack.user = current_user

    if @stack.save
      redirect_to myportfolios_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @stack.update(stack_params)
      redirect_to myportfolios_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @stack.destroy
    redirect_to myportfolios_path
  end

  private

  def stack_params
    params.require(:stack).permit(:name, :photo, :user_id)
  end

  def set_stack
    @stack = Stack.find(params[:id])
  end
end
