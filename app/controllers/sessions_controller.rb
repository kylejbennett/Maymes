class SessionsController < ApplicationController
  
  def new
  end

  def create

  	@user = User.find_by(email: params[:email])
  	if @user and @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to manage_path, notice: "Login Successful"
  	else
  		redirect_to login_path, alert: "Login Failed"
  	end

  end	

  def destroy

  	session[:user_id] = nil
  	redirect_to root_path, alert: "Logged Out"

  end

end
