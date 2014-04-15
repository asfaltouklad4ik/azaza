class EventsController < ApplicationController

  load_resource param_method: :event_params

  def index
    @events = Event.includes(:category)
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private
    
    def event_params
      params.require(:event).permit(:name, tasks_attributes: task_params)
    end

    def task_params
      [:id, :description, :deadline, :_destroy, :user_id, :name]
    end
end
