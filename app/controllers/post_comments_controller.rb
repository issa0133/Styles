class PostCommentsController < ApplicationController
  def create
    @post_image = PostImage.find(params[:post_image_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    comment.post_image_id = @post_image.id
    comment.save
    render :post_comments
    
  end
  
  def destroy
    if current_user.id == comment.user.id
      PostComment.find_by(id: params[:id]).destroy
    end
    @post_image = PostImage.find(params[:post_image_id])
    render :post_comments
    
  end
  
  private
  
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
  
  
end
