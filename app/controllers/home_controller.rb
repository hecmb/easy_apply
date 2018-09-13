class HomeController < ActionController::Base
  def home
  	@user = current_user
  end
end
