class SessionsController < ApplicationController
	def new
	end
	
	def create
		user = User.find_by(username: params[:username])

		if user.present? && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to profile_path, notice: "Logged in successfully"
		else
			flash[:alert] = "Invalid email or password"
			render :new, status: :bad_request
		end
	end

	def destroy
		reset_session
		session[:user_id] = nil
		redirect_to root_path, notice: "Logged Out"
	end
end