class TodosController < ApplicationController
  def index
    @todos = Todo.all

    respond_to do |format|
      format.json {render json: @todos}
    end
  end

  def create
    @todo = Todo.create! todo_params
    respond_to do |format|
      format.json {render json:@todo}
    end
  end

  def update
    @todo = Todo.find params[:id]
    @todo.update todo_params

    respond_to do |format|
      format.json {render json: @todo}
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.json {render json: @todo}
    end
  end

private
  def todo_params
    params.require(:todo).permit(:description, :user_id, :status)
  end
end
