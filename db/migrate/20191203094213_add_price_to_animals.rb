class AddPriceToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :price, :integer
  end
end
