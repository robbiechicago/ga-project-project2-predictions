class UsersController < ApplicationController

  # INDEX
  def index
    @users = User.all
  end

  #CREATE

  #NEW
  
  #EDIT
  
  #SHOW
  def show
    @user = User.find(params[:id])
  end

  #UPDATE
  
  #DESTROY

end
