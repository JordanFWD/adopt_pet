class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.float :age
      t.string :color
      t.string :weight
      t.string :species

      t.timestamps
    end
  end
end
