class AddColumnToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :photos_count, :integer
  end
end
