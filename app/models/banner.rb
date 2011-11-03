class Banner < ActiveRecord::Base
  
  has_attached_file :photo, 
                    :styles => { :thumb => "230x200" },
                    
                    :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :path => "ads/:id/:style/:basename.:extension",
                    
                    :convert_options => {
                          :thumb => "-background '#F7F4F4' -compose Copy -gravity center -extent 230x200"
                      }
                      
end
