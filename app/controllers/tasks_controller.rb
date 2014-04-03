class TasksController < ApplicationController

  def new 
    @task = Task.new
  end

    def index
     @tasks = Task.all
      end

      def create
        @task = Task.new(params[:task].permit(:name, :textdescription, :category, :priority))
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
              @task = Task.find(params[:id])
            end

              def update
                @task = Task.find(params[:id])
                  if @task.update(params[:task].permit(:name, :textdescription, :category, :priority))
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
                      params.require(:task).permit(:name, :textdescription, :category, :priority)
                    end
   
end


