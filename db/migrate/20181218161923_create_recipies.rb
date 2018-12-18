class CreateRecipies < ActiveRecord::Migration[5.0]
  def change
    create_table :recipies do |t|
      t.string :name
      t.string :description
      t.text :method
      t.timestamps
    end
    
    create_table :ingredients do |t|
      t.string :name
      t.float :price
      t.float :quantity
    end
    
    create_table :meals do |t|
      t.belongs_to :recipie, index: true
      t.belongs_to :ingredient, index: true
      t.datetime :meal_date
      t.timestamps
    end
  end
end
