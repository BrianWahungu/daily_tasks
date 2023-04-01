class TasksController < ApplicationController
    
  def create_home
    @category = Category.find_by(name: 'home')
    @task = @category.tasks.create(task_params)
  
    if @task.save
      render json: @task, status: :created
    else
      render json: { errors: @task.errors }, status: :unprocessable_entity
    end
  end
  
  def index
        tasks = Task.all
        render json: tasks
      end
    
      def create
        task = Task.new(task_params)
    
        if task.save
          render json: task, status: :created
        else
          render json: task.errors, status: :unprocessable_entity
        end
      end
    
      def show
        task = Task.find(params[:id])
        render json: task
      end
    
      def update
        task = Task.find(params[:id])
    
        if task.update(task_params)
          render json: task
        else
          render json: task.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        task = Task.find(params[:id])
        task.destroy
      end

      def task_params
        params.require(:task).permit(:name, :description, :due_date)
      end
    
    
      private
    
      def task_params
        params.require(:task).permit(:name, :description, :due_date, :status, :user_id, category_ids: [], reminder_ids: [])
      end
end
