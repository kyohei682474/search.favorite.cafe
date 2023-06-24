class AddFacilityIdToCafes < ActiveRecord::Migration[6.1]
  def change
    add_column :cafes, :facility_id, :integer
    add_index :cafes, :facility_id
  end
end
