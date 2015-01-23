class RStoriesController < ApplicationController

  # GET /r_stories/new
  def new
    @r_story = RStory.new
  end

  # POST /r_stories
  def create
    #story = RStory.new(params[:story])
    story = RStory.new(story_params)
    story.tags = params[:tags].join(', ')
    story.save!
    render plain: story.inspect
  end
	
private

  def story_params
    params.require(:r_story)
      .permit(:title, :content, :published, :tags)
  end
	
end
