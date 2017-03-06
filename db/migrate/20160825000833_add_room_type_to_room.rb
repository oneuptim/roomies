class AddRoomTypeToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :room_type, :integer
  end
end
