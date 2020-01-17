class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
     #byebug
     @guest = Guest.find(params[:appearance][:guest])
     @episode = Episode.find(params[:appearance][:episode])
     @appearance = Appearance.new(rating: params[:appearance][:rating].to_i, guest: @guest, episode: @episode)
     if @appearance.save
       redirect_to(@appearance.episode)
     else
       
       render :new
      
     end 
  end

  

  
  
  

end
