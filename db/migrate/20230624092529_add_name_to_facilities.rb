class AddNameToFacilities < ActiveRecord::Migration[6.1]
  def change
    add_column :facilities, :name, :string
  end
end
