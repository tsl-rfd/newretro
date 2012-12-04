class RetrosController < ApplicationController

  def create
    retro = Retro.create captured_on: Date.today
    redirect_to retro, notice: "You've created a new retrospective!"
  end
  
  def update
    retro = Retro.find(params[:id])
    retro.update_attributes(params[:retro])
    
    respond_to do |format|
      format.js 
    end
  end
  
  def index
  end
  
  def destroy
    retro = Retro.find(params[:id])
    retro.destroy if retro
    redirect_to retros_url, notice: "That retro is toast!"
  end
  
  def show
    @retro = Retro.find(params[:id])
  end

end
