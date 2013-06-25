class Student < ActiveRecord::Base
  attr_accessible :age, :name, :teacher_id, :class_room_id

 	# Associations
  belongs_to :teacher
  belongs_to :class_room

  # Validations
  validates :name, uniqueness: true
  validates :age, length: { :in => 1..2 }
  validates :age, format: { :with => /\d+/}
end
