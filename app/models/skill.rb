class Skill < ActiveRecord::Base
  
  validates_presence_of :category, :question
  validates_length_of :category, :within => 2..100
  
  has_friendly_id :category, :use_slug => true
  
end
