class User < ActiveRecord::Base
  has_many :user_event_predictions
  has_many :events, through: :user_event_predictions
end
