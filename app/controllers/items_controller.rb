class ItemsController < ApplicationController
  
  def create
    @item = Item.new(params[:item])
    if @item.save
      respond_to do |format|
        format.html { redirect_to retro_url(@item.retro) }
      end
    else
      logger.warn "Whoa!"
      logger.warn item.inspect
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    if @item
      @item.destroy
      respond_to do |format|
        format.html { redirect_to retro_url(@item.retro) }
      end
    end
  end
end