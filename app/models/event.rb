class Event < ActiveRecord::Base
  has_many :user_event_predictions
  has_many :users, through: :user_event_predictions
end
