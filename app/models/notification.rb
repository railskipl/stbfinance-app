class Notification < ActiveRecord::Base
  validates_presence_of :title, :description
  validates_length_of :title, :within => 2..200
  
  has_friendly_id :title, :use_slug => true
  
end
