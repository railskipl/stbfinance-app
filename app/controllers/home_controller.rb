class HomeController < ApplicationController
  
  def contact
    if request.post? and params[:reset_password]
    	      if contact = Contact.new(params[:reset_password])

    	        contact.name = "#{params[:reset_password][:name]}"
    	        contact.email = "#{params[:reset_password][:email]}"
    	        contact.message = "#{params[:reset_password][:message]}"
    	        
    	        if contact.save


    	        Emailer.deliver_contact_email(contact)

              flash[:notice] = "Thank you for sending a mail."
    	        redirect_to("/")
  	        else
  	          render :contact
	          end

    	      end

    	   else
    	     @title = "contacts"
  	     end
  	     
  	     @meta_title = "STB Finance Service - Contact Us"
  end
  
  def index
    @title = "home"
  end
  
end
