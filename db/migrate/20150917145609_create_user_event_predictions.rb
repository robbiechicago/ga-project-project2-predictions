class CreateUserEventPredictions < ActiveRecord::Migration
  def change
    create_table :user_event_predictions do |t|
      t.integer :user_id
      t.integer :event_id
      t.decimal :prediction_1
      t.decimal :prediction_2
      t.decimal :prediction_3

      t.timestamps null: false
    end
  end
end
