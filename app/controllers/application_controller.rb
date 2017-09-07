class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
  end

  def signup
  end
   before_action :authorize
   protected
  def authorize
  	unless User.find_by(id: session[user_id])
  		redirect_to login_url, notice:"you are tryin to access without permission"
  	end
  end
end
