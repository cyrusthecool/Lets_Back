class EventsController < ApplicationController

before_action :authenticate_user, except: [:index, :show], :raise => false

  def index
    @events = Event.all

  end

  def show
    @event = Event.find params[:id]
  end

  def edit
    @event = Event.find params[:id]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create (event_params)

      if @event.save
        redirect_to event_path(@event)
      else
        render 'new'
      end
  end


  def update
  @event = Event.find params[:id]
  @event.update event_params
  if @event.update(event_params)
    redirect_to event_path(@event)
  else
    render 'edit'
  end
end


def destroy
  @event = Event.find params[:id]
  @event.destroy
  redirect_to events_path
end



  private
  def event_params
    params.require(:event).permit(:name, :description, :location, :group_id, :image, :capacity, :photos, :date, :time)
  end
def find_book
@book = Book.find(params[:id])
end
end
