class AddUserIdAndEventId < ActiveRecord::Migration[7.1]
  def change
    add_column :attendances, :user_id, :integer
    add_column :attendances, :event_id, :integer
  end
end
