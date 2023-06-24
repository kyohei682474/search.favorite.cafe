class RemoveCafeIdFromFacilities < ActiveRecord::Migration[6.1]
  def change
    remove_column :facilities, :cafe_id, :integer
  end
end
