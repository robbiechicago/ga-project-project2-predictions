class ChangePrediction1ResultTypeInEvents < ActiveRecord::Migration
  def change
    change_column :events, :prediction_1_result, :integer
    change_column :events, :prediction_2_result, :integer
    change_column :events, :prediction_3_result, :integer
    change_column :user_event_predictions, :prediction_3, :integer
    change_column :user_event_predictions, :prediction_3, :integer
    change_column :user_event_predictions, :prediction_3, :integer
  end
end
