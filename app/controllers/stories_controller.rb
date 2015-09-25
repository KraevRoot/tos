class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)

    if @story.save
      flash[:notice] = "Story successfully created."
      redirect_to @story
    else
      flash[:alert] = "Something going wrong."
    end
  end

  def show
    @story = Story.find(params[:id])
  end

  private

  def story_params
    params.require(:story).permit(:title, :description)
  end
end
