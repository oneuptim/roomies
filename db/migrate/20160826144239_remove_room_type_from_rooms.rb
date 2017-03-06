class RemoveRoomTypeFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :room_type, :integer
  end
end
