class UsersController < ApplicationController
  
  def index
    
  end
  
  def create
    incoming_name = params[:user][:nickname].strip.delete('@')
    if !User.find_by_nickname(incoming_name)
      @user = organization.users.create nickname: incoming_name, provider: 'twitter'
      
      respond_to do |format|
        format.html { redirect_to users_url(subdomain: 'www', notice: 'New  user added!') }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to users_url(subdomain: 'www', notice: "User already exists.") }
        format.js { head :ok }
      end
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url(subdomain: 'www') }
      format.js
    end
  end
  
end