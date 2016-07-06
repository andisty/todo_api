class TodosController < ApplicationController

    def index
      @todos = Todo.all
      render json: @todos
    end

    def destroy
      @todo = Todo.find(params[:id])
      @todo.destroy
      head :no_content
    end

    def create
      @todo = Todo.new(todo_params)
      if @todo.save
        render json: @todo
      else
        render json: @todo.errors
      end
    end

    def update
      @todo = Todo.find(params[:id])
      if @todo.update(todo_params)
        render json: @todo
      else
        render json: @todo.errors
      end
    end


    private

      def todo_params
        params.require(:todo).permit(:title, :completed)
      end





end
