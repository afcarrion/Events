class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@spectacles = Spectacle.order(id: :desc)
  						   	   .where user_id: current_user.id	
  	end
  end
end
