class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :species
      t.string :name
      t.text :characteristics
      t.boolean :availability, default: false
      t.string :location
      t.references :user, foreign_key: true
      # t.string :photo

      t.timestamps
    end
  end
end
