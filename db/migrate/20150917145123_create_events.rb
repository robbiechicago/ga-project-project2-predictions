class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.decimal :prediction_1_result
      t.decimal :prediction_2_result
      t.decimal :prediction_3_result
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps null: false
    end
  end
end
