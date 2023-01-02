class StacksController < ApplicationController
  before_action :set_stack, only: [:edit, :update, :destroy]

  def new
    @stack = Stack.new
  end

  def create
    @stack = Stack.new(stack_params)
    @stack.position = @user.stacks.length + 1
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

  def sort
    @user = current_user

    @stack_sorted = params[:stackOrdered].split(",").map{ |id| Stack.find(id.to_i) }

    @stack_sorted.each_with_index do |p, index|
      p.position = index + 1
      p.save
    end
  end

  private

  def stack_params
    params.require(:stack).permit(:name, :photo, :user_id)
  end

  def set_stack
    @stack = Stack.find(params[:id])
  end
end
