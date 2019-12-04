class AddAvailabilityToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :availability_start, :date
    add_column :animals, :availability_end, :date
    remove_column :animals, :availability
  end
end
