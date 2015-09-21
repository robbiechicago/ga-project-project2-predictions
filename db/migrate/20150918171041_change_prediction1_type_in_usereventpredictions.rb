class ChangePrediction1TypeInUsereventpredictions < ActiveRecord::Migration
  def change
    change_column :user_event_predictions, :prediction_1, :integer
    change_column :user_event_predictions, :prediction_2, :integer
  end
end
