class TasksController < ApplicationController
  before_action :find_event, except: [:find]
    #def discontinue
    # authorize! :discontinue, @task
    #end
    def assign
    @task = Task.find(params[:id])
    @task.update_column(:user_id, current_user.id)
    redirect_to event_tasks_path(@task.event)
    end

    def index
      @tasks = @event.tasks
    end

    def new
      @task = Task.new
    end

    def create
     @task = @event.tasks.new(task_params)
       if @task.save
         redirect_to event_tasks_path(@event)
       else
         render :new
       end
    end
       
    def show
    end
        
    def edit
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

      def find_event
        @event = Event.find(params[:event_id])
      end
      def task_params
        params.require(:task).permit(:name, :description, :category, :priority, :deadline)
      end
end


