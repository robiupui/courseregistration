class Course < ActiveRecord::Base
  attr_accessible :coursename, :coursenumber
  validates :coursename, :presence => true
  validates :coursenumber, :presence => true
  
  has_many :textbooks
  has_and_belongs_to_many :students
  
  
  def full_title
    "#{coursenumber}: #{coursename}"
  end
  
  
  
end
