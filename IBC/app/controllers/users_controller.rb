class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create 
		if @use = User.find_by(params[:nombre])
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print @use.nombre
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			print "***************************************"
			@user = User.new(user_params)	  
			if @user.save 
			#session[:user_id] = @user.id 
				redirect_to '/usuario' 
			else 
				redirect_to '/signup' 
			end
		else
			redirect_to '/usuario'
		end 
	end

	private
	  def user_params
	    params.require(:user).permit(:nombre, :apellido, :password)
	  end
end
