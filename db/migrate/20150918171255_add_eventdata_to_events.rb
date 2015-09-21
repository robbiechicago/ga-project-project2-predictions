class AddEventdataToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_data_type, :string
  end
end
