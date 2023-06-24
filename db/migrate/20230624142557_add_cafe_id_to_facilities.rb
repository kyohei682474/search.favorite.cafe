class AddCafeIdToFacilities < ActiveRecord::Migration[6.1]
  def change
    add_column :facilities, :cafe_id, :integer
    add_index :facilities, :cafe_id
  end
end
