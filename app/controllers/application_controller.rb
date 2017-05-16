class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

  #path for login to landing page
  def after_sign_in_path_for(resource)
  	landing_path(current_user.id)
  end


  
  private

  #path for logout to direct back to login 
  def after_sign_out_path_for(resource_or_scope)
  	login_path
  end

   def record_not_found
      render plain: "404 Not Found", status: 404
      
	  message = "User with email #{params[:email]} not found."
      logger.error message
      redirect_to not_found_url, info: message
      #flash[:error] = "You don't have access to this section."
      #redirect_back(fallback_location: login_path)
    end

end