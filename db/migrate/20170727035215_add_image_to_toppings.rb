class AddImageToToppings < ActiveRecord::Migration[5.1]
  def change
    add_column :toppings, :image, :string
    add_column :toppings, :icon, :string
  end
end
