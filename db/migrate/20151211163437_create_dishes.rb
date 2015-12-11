class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :category
      t.string :status
      t.string :title
      t.string :description
      t.decimal :price, :precision => 6, :scale => 2

      t.timestamps null: false
    end
  end
end
