class SearchesController < ApplicationController
  def search
    @model = params[:model]
    @word = params[:word]
    @post_image = search_for(@model, @word)
    @post_images = @post_image.order("created_at DESC")
    @genres = Genre.all
    

  end

  private

  def search_params
    params.require(:search).permit(:model, :word)
  end

  def search_for(model, word)
    if model == "PostImage"
      PostImage.where("title LIKE ?", "%#{word}%").order("created_at DESC")
    elsif model == "Genre"
      PostImage.where(genre_id: word).order("created_at DESC")
    else
      redirect_to request.referer
    end
  end

end