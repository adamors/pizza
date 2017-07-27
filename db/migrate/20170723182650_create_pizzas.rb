class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.integer :weight
      t.string "size"
      t.boolean "vegetarian"
      t.boolean "can_be_delivered"
      t.boolean "on_sale"
      t.boolean "healthy"
      t.integer "calories"
      t.string "allergens", array: true

      t.timestamps
    end
  end
end
