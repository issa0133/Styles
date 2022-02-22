class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order 
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def followers
    user = User.find(params[:id])
    @users = user.followers
  end
  
  def followeds
    user = User.find(params[:id])
    @users = user.followeds
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
  
end
