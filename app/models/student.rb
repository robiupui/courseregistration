class Student < ActiveRecord::Base
  attr_accessible :emailaddress, :firstname, :lastname, :course_ids
  validates :emailaddress, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  
  has_and_belongs_to_many :courses
  has_many :textbooks, :through => :courses
  has_many :bookstobuy, :through => :courses, :source => :textbooks
  
  
end
