class AddColumnToPhoto < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :comments_count, :integer
  end
end
