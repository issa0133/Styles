class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
    @genres = Genre.all
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save
      redirect_to post_images_path
    else
      @genres = Genre.all
      render :new
    end

  end

  def index
    @post_images = PostImage.page(params[:page]).reverse_order
    @genres = Genre.all


  end

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new

  end

  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to post_images_path

  end

  def follower_post
    @post_images = PostImage.page(params[:page]).reverse_order.where(user_id: [current_user.follower_ids])
    @genres = Genre.all
  end


  private

  def post_image_params
    params.require(:post_image).permit(:title, :image, :introduction, :genre_id)
  end

end
