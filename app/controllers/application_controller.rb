class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	landing_path(current_user.id)
  end

  private

  def after_sign_out_path_for(resource_or_scope)
  	login_path
  end

end