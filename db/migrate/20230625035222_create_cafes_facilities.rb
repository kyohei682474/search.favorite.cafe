class CreateCafesFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :cafes_facilities do |t|
      t.references :cafe, null: false, foreign_key: true
      t.references :facility, null: false, foreign_key: true
      t.timestamps
    end
  end
end
