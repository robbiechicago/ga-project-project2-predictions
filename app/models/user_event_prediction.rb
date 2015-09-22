class UserEventPrediction < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  def average_rank
    (rank(1).to_f + rank(2).to_f + rank(3).to_f / 3).round(2)
  end

  def rank(number)
    return "In progress" if !event.completed?
    ranks = event.user_event_predictions.each_with_object({}) do |obj, memo|
      memo[obj.user_id] = (event.send("prediction_#{number}_result") - obj.send("prediction_#{number}")).abs
    end.sort_by {|k, v| v}

    ranks.to_h.keys.index(user.id) + 1
  end

end
