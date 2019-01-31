class SpectaclesController < ApplicationController
	
	before_action :set_spectacle, only: [:show, :edit, :update, :destroy]

	def index
		@spectacles = Spectacle.where user_id: current_user.id
	end

	def new
		@spectacle = Spectacle.new
	end

	def create
		# render plain: params[:spectacle].inspect --Trae las variables de la vista
		@spectacle = current_user.spectacles.new(spectacle_params)
		@spectacle.save
		redirect_to @spectacle
	end

	def show
	end

	def edit
	end

	def update
		@spectacle.update spectacle_params
		redirect_to @spectacle
	end

	def destroy
		@spectacle.destroy
		redirect_to spectacles_path
	end

	private
	def spectacle_params
		params.require(:spectacle).permit(:name, :category, :place, :address, 
			:date_start, :date_finish, :type_event, :email_user)
	end

	def set_spectacle 
		@spectacle = Spectacle.find params[:id]
	end
end
