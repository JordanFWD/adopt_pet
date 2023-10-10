class Animal < ApplicationRecord
  has_many :pets
  validates_presence_of :age, :color, :weight, :species

  scope :dogs_only:, -> { where(species: "dog") }
  scope :cats_only::, -> { where(species: "cat") }

end
