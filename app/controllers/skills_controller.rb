class SkillsController < ApplicationController
  
  def show
    @skill = Skill.find(params[:id])   
  end
  
  def skillemail
        if request.post? and params[:test_skills]
      	      if skillemail = Skillemail.new(params[:test_skills])

      	        skillemail.name = "#{params[:test_skills][:name]}"
      	        skillemail.email = "#{params[:test_skills][:email]}"
      	        skillemail.contact = "#{params[:test_skills][:contact]}"
      	        skillemail.answer = "#{params[:test_skills][:answer]}"

      	        if skillemail.save


      	        Emailerskill.deliver_skill_email(skillemail)

                flash[:notice] = "Thank you for sending a mail."
      	        redirect_to("/")
    	        else
    	          
  	          end

      	      end

      	   else
      	     @title = "contacts"
    	     end

    	     @meta_title = "STB Finance Service - Contact Us"
  end
  
end
