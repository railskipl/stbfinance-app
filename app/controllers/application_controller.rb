class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_out_path_for(resource_or_scope)
      new_admin_session_path
  end
  
  def rescue_with_handler(exception)
      redirect_to '/'
    end

    def method_missing(id, *args)
      redirect_to '/'
    end
  
end
