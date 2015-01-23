class StoriesController < ApplicationController

  # GET /stories/new
  def new
  end

  # POST /stories/save
  def save
    story = Story.new

    story.title     = params[:title]
    story.content   = params[:content]
    story.published = params[:published]
    story.tags      = params[:tags].join(',')

    story.save!
    render plain: story.inspect
  end
	
	
end
