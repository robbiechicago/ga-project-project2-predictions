class UserEventPredictionsController < ApplicationController
  before_action :set_event, only: [:new, :create]

  def new
    @prediction = UserEventPrediction.new
  end

  def create
    prediction = @event.user_event_predictions.new(user_event_prediction_params)
    prediction.user = current_user
    if prediction.save
      redirect_to @event
    else
      render 'new'
    end
  end

  private
    def user_event_prediction_params
      params.require(:user_event_prediction).permit(:user_id,
                                                    :event_id, 
                                                    :prediction_1,
                                                    :prediction_2,
                                                    :prediction_3
                                                   )
    end

    def set_event
      @event = Event.find(params[:event_id])
    end
end
