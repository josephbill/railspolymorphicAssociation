# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
    before_action :set_commentable
  
    def index
      comments = @commentable.comments
      render json: comments
    end
  
    def create
      comment = @commentable.comments.new(comment_params)
      if comment.save
        render json: comment
      else
        render json: comment.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_commentable
      resource, id = request.path.split('/')[1, 2]
      @commentable = resource.singularize.classify.constantize.find(id)
    end
  
    def comment_params
      params.require(:comment).permit(:body)
    end
  end
  