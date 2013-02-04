class Textbook < ActiveRecord::Base
  attr_accessible :isbn, :title, :course_id
  validates :isbn, :presence => true
  validates :title, :presence => true
  
  belongs_to :course
  
end
