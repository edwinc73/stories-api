class Api::V1::StoriesController < Api::V1::BaseController
  before_action :set_story, only: %i[edit show update destroy]
  def index
    @stories = Story.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit([:name, :text])
  end
end
