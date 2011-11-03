class Banner < ActiveRecord::Base
  
  has_attached_file :photo, 
                    :styles => { :thumb => "230x200" },
                    
                    :convert_options => {
                          :thumb => "-background '#F7F4F4' -compose Copy -gravity center -extent 230x200"
                      }
                      
end
