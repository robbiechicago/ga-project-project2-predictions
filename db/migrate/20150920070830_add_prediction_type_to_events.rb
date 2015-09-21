class AddPredictionTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :prediction1_type, :string
    add_column :events, :prediction2_type, :string
    add_column :events, :prediction3_type, :string
  end
end
