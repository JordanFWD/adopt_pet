class Pet < ApplicationRecord
  before_save :update_adoption_date
  
  belongs_to :owner
  belongs_to :animal
  
  validates_presence_of :name

  def days_since_adopted
    (adoption_date - Time.now).to_i
  end
  
  scope :older_than_five -> { joins(:Animal).where(age: > 5) }

  private
  
    def update_adoption_date
      self.adoption_date = Time.now
    end
end
