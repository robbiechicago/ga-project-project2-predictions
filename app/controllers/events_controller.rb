class EventsController < ApplicationController

  # INDEX
  def index
    @events = Event.all
  end

  #CREATE

  #NEW
  
  #EDIT
  
  #SHOW
  def show
    @event = Event.find(params[:id])
  end

  #UPDATE
  
  #DESTROY

  
end
