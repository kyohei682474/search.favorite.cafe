class RemoveCafeIdAndTimestampsFromFacilities < ActiveRecord::Migration[6.1]
  def change
    def up
    remove_column :facilities, :cafe_id, :integer
    remove_column :facilities, :timestamps, :boolean
    end

   def down
    add_column :facilities, :cafe_id, :integer, null: false
    add_column :facilities, :timestamps, :boolean, null: false
   end
  end
end
