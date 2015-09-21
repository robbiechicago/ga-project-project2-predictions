class Event < ActiveRecord::Base
  has_many :user_event_predictions
  has_many :users, through: :user_event_predictions

  def event_status
    if start_datetime > Time.now 
      e_status = 'pre event'
    elsif start_datetime <= Time.now && end_datetime > Time.now
      e_status = 'in progress'
    else
      e_status = 'post event'
    end
  end

  

end
