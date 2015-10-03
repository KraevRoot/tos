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
      redirect_to @story, notice: 'Story successfully created.'
    else
      render 'edit'
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])

    if @story.update(story_params)
      redirect_to stories_path, notice: 'Story successfully updated.'
    else
      render 'edit'
    end
  end

  def show
    @story = Story.find(params[:id])
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path, notice: 'Story successfully destroyed.'
  end

  private

  def story_params
    params.require(:story).permit(:title, :description)
  end
end
