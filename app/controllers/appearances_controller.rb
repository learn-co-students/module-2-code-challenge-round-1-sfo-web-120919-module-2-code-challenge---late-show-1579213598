class AppearancesController < ApplicationController

    def new
        @app = Appearance.new
    end

    def create
        @app = Appearance.new(app_params)
        if @app.save
            redirect_to episode_path(@app.episode_id)
        else
            render :new
        end
        
    end



    private 

    def app_params
        params.require(:appearance).permit(:rating,:guest_id,:episode_id)
    end
  
  end