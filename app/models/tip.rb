class Tip < ActiveRecord::Base
  
  validates_presence_of :title, :description
  validates_length_of :title, :within => 2..100
  
  has_friendly_id :title, :use_slug => true
  
end
