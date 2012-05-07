class Page < ActiveRecord::Base
  
  validates_presence_of :title, :body
  validates_length_of :title, :within => 2..100
  
  
  has_attached_file :photo, 
                    :styles => { :thumb => "140x140" },
                    
                    :convert_options => {
                          :thumb => "-background '#EAEAEA' -compose Copy -gravity center -extent 140x140"
                      }
                      
  has_friendly_id :title, :use_slug => true
  
end
