class StacksController < ApplicationController


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

  private

  def stack_params
    params.require(:stack).permit(:name, :photo, :user_id)
  end
end
