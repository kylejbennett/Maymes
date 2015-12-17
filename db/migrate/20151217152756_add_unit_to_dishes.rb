class AddUnitToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :unit, :string
  end
end
