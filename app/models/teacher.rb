class Teacher < ActiveRecord::Base
  attr_accessible :name

  # Associations
  has_many :students

  # Validations
  validates :name, uniqueness: true
end
