class Owner < ApplicationRecord
  has_many :pets
  validates_presence_of :name, email:, :age
  validates_uniqueness_of :email
  validates_format_of :email, with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  def pets_adopted_count
    self.pets.count
  end

  def pets_names
    pets.map(&:name).join(",")
  end
end
