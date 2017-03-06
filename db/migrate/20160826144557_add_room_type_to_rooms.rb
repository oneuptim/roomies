class AddRoomTypeToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :room_type, :string
  end
end
