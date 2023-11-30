class ProfileController < ApplicationController
	def index
	end

	def save_bio
		@user = Current.user.find(params[:id])

		if @user.update(user_params)
			flash[:success] = "Bio saved successfully."
			redirect_to profile_path
		else
			flash[:error] = "Failed to save bio."
			render 'edit'
		end
	end


	private
		def user_params
			params.require(:user).permit(:bio)
		end
end
