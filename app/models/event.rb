class Event < ActiveRecord::Base
  has_many :user_event_predictions
  has_many :users, through: :user_event_predictions

  # There is an event which has n number of user_event_predictions
  #   each user_event_prediction has 3 predictions, which are currently fields in each row
  #   each user_event_prediction also belongs to a user
  # When the event is finished, you update the event table with the results
  #   and you build three ranks, which are hashes where the key is a user_id, e.g:
  # ranks1 { 1: 3 } <-- where the 3 is the third "rank" from the top

  # Q. Given a prediction made by a user, what numerical rank for that prediction did they score.

  def event_status
    if start_datetime > Time.now 
      e_status = 'pre-event'
    elsif start_datetime <= Time.now && end_datetime > Time.now
      e_status = 'in-progress'
    else
      e_status = 'post-event'
    end
  end

  def completed?
    event_status == 'post-event'
  end

  def order_by_rank
    user_event_predictions.each_with_object({}) do |obj, memo|
      memo[obj.id] = obj.average_rank
    end.sort_by {|k, v| v}.map do |prediction_id, rank|
      UserEventPrediction.find(prediction_id)
    end
  end

  # def ranks1
  #   return {} if completed?
  #   if event_status == 'post-event'
  #     # results
  #     result1 = prediction_1_result
  #     # some hashes
  #     diff_1 = {}
  #     rank_1 = {}
  #     # iterating through the predictions and building the hashes
  #     user_event_predictions.each do |obj|
  #       diff_1[obj.user_id] = (result1 - obj.prediction_1).abs
  #     end
  #     diff1_sorted = diff_1.sort_by {|k, v| v}
  #     i = 1
  #     diff1_sorted.each do |k,v|
  #       rank_1[k] = i
  #       i+=1
  #     end
  #     rank_1
  #   end
  # end

  # def ranks2
  #   if event_status == 'post-event'
  #     # results
  #     result2 = prediction_2_result
  #     # some hashes
  #     diff_2 = {}
  #     rank_2 = {}
  #     # iterating through the predictions and building the hashes
  #     user_event_predictions.each do |obj|
  #       diff_2[obj.user_id] = (result2 - obj.prediction_2).abs
  #     end
  #     diff2_sorted = diff_2.sort_by {|k, v| v}
  #     i = 1
  #     diff2_sorted.each do |k,v|
  #       rank_2[k] = i
  #       i+=1
  #     end
  #     rank_2
  #   end
  # end

  # def ranks3
  #   if event_status == 'post-event'
  #     # results
  #     result3 = prediction_3_result
  #     # some hashes
  #     diff_3 = {}
  #     rank_3 = {}
  #     # iterating through the predictions and building the hashes
  #     user_event_predictions.each do |obj|
  #       diff_3[obj.user_id] = (result3 - obj.prediction_3).abs
  #     end
  #     diff3_sorted = diff_3.sort_by {|k, v| v}
  #     i = 1
  #     diff3_sorted.each do |k,v|
  #       rank_3[k] = i
  #       i+=1
  #     end
  #     rank_3
  #   end
  # end

  # def have_you_predicted
  #   predicted_users = []
  #   @event.user_event_predictions.each do |user|
  #     predicted_users << user.user_id
  #   end
  #   if predicted_users.exists?(current_user.id)
  #     hyp = 'You\'ve predicted!'
  #   else
  #     hyp = 'get and predict!'
  #   end
  # end
    

end
