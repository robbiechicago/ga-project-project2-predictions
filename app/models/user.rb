class User < ActiveRecord::Base
  has_many :user_event_predictions
  has_many :events, through: :user_event_predictions

  def active_user 
    User.find_by(name: 'Rob Holloway')
  end

end
