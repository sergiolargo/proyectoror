class SessionsController < ApplicationController
  	
  	def new
  	end

 	def create
	  @user = User.find_by(nombre: params[:session][:nombre])
	  #@user = User.all
	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    redirect_to '/ibc'
	  else
	    redirect_to 'login'
	  end 
	end

	def destroy 
	  session[:user_id] = nil 
	  redirect_to '/login' 
	end
end
