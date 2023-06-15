class Api::V1::CommentsController < ApplicationController
  before_action :set_story, only: %i[create]
  skip_before_action :verify_authenticity_token

  def create
    @comment = Comment.new(comment_params)
    @comment.story = @story
    if !@comment.save
      render_error
    end
  end

  def set_story
    @story = Story.find(params[:story_id])
  end

  def comment_params
    params.require(:comment).permit([:name, :content])
  end

  def render_error
    render json: { errors: @story.errors.full_messages },
      status: :unprocessable_entity
  end
end
