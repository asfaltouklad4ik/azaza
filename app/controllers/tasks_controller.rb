class TasksController < ApplicationController
  load_and_authorize_resource param_method: :task_params
    #def discontinue
    # authorize! :discontinue, @task
    #end
    def new 
      @task = Task.new
    end

    def index
      @tasks = Task.all
    end

    def create
      @task = Task.new(task_params)
        if @task.save
          redirect_to @task
        else
          render 'new'
        end
    end
       
    def show
    end
        
    def edit
      authorize! :edit, @task
    end

    def update
        if @task.update(task_params)
          redirect_to @task
        else 
          render 'edit'
        end
    end

    def destroy
      @task.destroy
      redirect_to tasks_path
    end

    private
      def task_params
        params.require(:task).permit(:name, :textdescription, :category, :priority, :time_in, :time_out)
      end
end


