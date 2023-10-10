class AddAnimalRefToPet < ActiveRecord::Migration[7.0]
  def change
    add_reference :pets, :animal, null: false, foreign_key: true
  end
end
