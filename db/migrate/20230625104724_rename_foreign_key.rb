class RenameForeignKey < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :cafes_facilities, :caves
    add_foreign_key :cafes_facilities, :cafes
  end
end
