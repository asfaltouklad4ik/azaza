class TasksController < ApplicationController
  load_and_authorize_resource
    #def discontinue
    # Automatically does the following:
    # @product = Task.find(params[:id])
    # authorize! :discontinue, @task
    #end
    def new 
      @task = Task.new
    end

    def index
      @tasks = Task.all
    end

    def create
      @task = Task.new(params[:task].permit(:id, :name, :textdescription, :category, :priority, :time_in, :time_out))
        if @task.save
          redirect_to @task
        else
          render 'new'
        end
    end
       
    def show
      @task = Task.find(params[:id])
    end
        
    def edit
      authorize! :edit, @task
      @task = Task.find(params[:id])
    end

    def update
      @task = Task.find(params[:id])
        if @task.update(params[:task].permit(:name, :textdescription, :category, :priority, :time_in, :time_out))
          redirect_to @task
        else 
          render 'edit'
        end
    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path
    end

    private
      def task_params
        params.require(:task).permit(:name, :textdescription, :category, :priority, :time_in, :time_out)
      end
end


