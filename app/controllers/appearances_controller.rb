class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        
    end

    def index
        @appearances = Appearance.all
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.save
            redirect_to episode_path(@appearance.episode)
        else
            render :new
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end



end