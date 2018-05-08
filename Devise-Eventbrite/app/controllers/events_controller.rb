class EventsController < ApplicationController
  def new
    @event = Event.all
  end

  def create

  @event = Event.create(description: params[:description],date: params[:date],place: params[:place])
  @event.creator_id = current_user.id
  puts "\n"
  puts @event.id
  puts @event.description
  puts "\n"
  redirect_to events_index_path(@event)
  end

  def edit
    @event = Event.find(params[:id])  
  end

  def show   
    @event = Event.find(params[:id])

  end

  def destroy
   
     @event = Event.find(params[:id])
    @event.destroy
  end

  def index
    @event = Event.all
  end

  private
  def event_params
     params.require(:event).permit(:description, :date, :place, :price)
  end

end

