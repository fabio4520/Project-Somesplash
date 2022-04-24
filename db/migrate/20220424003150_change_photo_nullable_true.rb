class ChangePhotoNullableTrue < ActiveRecord::Migration[7.0]
  def change
    change_column_null :photos, :category_id, true
  end
end
