class UsersController < ApplicationController

  # INDEX
  def index
    @users = User.all
  end

  #NEW

  #CREATE
  
  #EDIT
  
  #SHOW
  def show
    @user = User.find(params[:id])
  end

  #UPDATE
  
  #DESTROY

end
