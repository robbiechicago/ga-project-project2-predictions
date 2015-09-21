class RemoveEventDataTypeFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :event_data_type, :string
  end
end
