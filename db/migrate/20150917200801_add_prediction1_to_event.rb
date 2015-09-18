class AddPrediction1ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :prediction1, :string
    add_column :events, :prediction2, :string
    add_column :events, :prediction3, :string
  end
end
