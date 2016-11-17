class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_current_user
  	if !current_user
  		redirect_to root_path
  	end
  end
end
