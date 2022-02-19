class HomesController < ApplicationController
  def top
    @post_images = PostImage.page(params[:page]).reverse_order
    @genres = Genre.all
  
  end
  
  
  def about
  end
end
