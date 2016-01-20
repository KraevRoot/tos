class StoriesController < ApplicationController
  before_filter :authorize, only: [:new, :edit, :update, :destroy]

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.user = current_user

    if @story.save
      redirect_to @story, notice: 'Story successfully created.'
    else
      render 'edit'
    end
  end

  def edit
    @story = Story.friendly.find(params[:id])
  end

  def update
    @story = Story.friendly.find(params[:id])

    if @story.update(story_params)
      redirect_to @story, notice: 'Story successfully updated.'
    else
      render 'edit'
    end
  end

  def show
    @story = Story.friendly.find(params[:id])

    if request.path != story_path(@story)
      redirect_to @story, status: :moved_permanently
    end
  end

  def destroy
    @story = Story.friendly.find(params[:id])
    @story.destroy
    redirect_to stories_path, notice: 'Story successfully destroyed.'
  end

  private

  def story_params
    params.require(:story).permit(:title, :description, :tag_names)
  end
end
