class EventsController < ApplicationController

    before_action :authenticate_user!, except: [:index, :show]

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render'new'
    end
  end

  def show
    @event=Event.find(params[:id])

    		@attendees = @event.attendees
  end

  def index
    @events=Event.all
  end

  private

  def event_params
    params.require(:event).permit(:name, :date)
  end

end
