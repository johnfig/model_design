class ClassRoom < ActiveRecord::Base
  attr_accessible :name, :room

  # Associations
  has_many :students

  # Validations
  validates :name, uniqueness: true
end
