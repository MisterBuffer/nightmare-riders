class RegistrationController < ApplicationController
	def new 
		@user = User.new
	end
	def create
		@user = User.create(user_params)
		if @user.save
			session[:user_id] = @user.id #This way we set a coovkie session for a user to stay logged in after a correct sign up
			redirect_to root_path, notice: "User created successfully!"
		else
			render :new, status: :bad_request
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation, :avatar)
	end
end