class CommentsController < ApplicationController
  def index 
    case 
    when params[:user_id]
      comments = Comment.where(user_id: params[:user_id])
    when params[:artwork_id]
      comments = Comment.where(artwork_id: params[:artwork_id])
    else
      comments = Comment.all
    end

    render json: comments
  end

  def create 
    comment = Comment.new(comment_params) 
    
    if comment.save 
      render json: comment_url(comment) 
    else 
      render json: comment.errors.full_messages 
    end 

  end

  def destroy
    comment = Comment.find(params[:id]) 
    comment.destroy 
    render json: comment
  end

  private 

  def comment_params 
    params.require(:comment).permit(:body, :user_id, :artwork_id)
  end 
end
