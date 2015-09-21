class EventsController < ApplicationController

  # INDEX
  def index
    @events = Event.all.order("created_at ASC")
  end

  #NEW
  def new
    @event = Event.new
  end

  #CREATE
  def create
    event = Event.new(params.require(:event).permit(  :name, 
                                                      :event_type, 
                                                      :start_datetime, 
                                                      :end_datetime, 
                                                      :prediction1, 
                                                      :prediction1_type,
                                                      :prediction2, 
                                                      :prediction2_type,
                                                      :prediction3, 
                                                      :prediction3_type
                                                    ))

    if event.save
      redirect_to event
    else
      render 'new'
    end
  end
  
  #EDIT
  
  #SHOW
  def show
    @event = Event.find(params[:id])
  end

  #UPDATE
  
  #DESTROY


end
