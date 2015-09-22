module OtherHelper

  def have_you_predicted

    predicted_users = []
    Event.user_event_predictions.each do |user|
      predicted_users << user.user_id
    end
    if predicted_users.exists?(current_user.id)
      hyp = 'You\'ve predicted!'
    else
      hyp = 'get and predict!'
    end

  end 
  
end