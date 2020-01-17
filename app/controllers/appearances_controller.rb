class AppearancesController < ApplicationController

	def new
		@appearance = Appearance.new
	end

	def create  
		@appearance = Appearance.new(appearance_params)

		if @appearance.save
			redirect_to episode_path(@episode)
		else
			render :new
		end
	
		# After submitting the form, the user should be redirected to the selected episode's show #page.





	end
	
	def appearance_params
		params.require(:appearance).permit(:guest_id, :episode_id)
	end
end