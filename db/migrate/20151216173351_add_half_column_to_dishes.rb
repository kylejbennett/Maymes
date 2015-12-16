class AddHalfColumnToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :half, :decimal
    add_column :dishes, :full, :decimal
  end
end
