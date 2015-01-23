class REssaysController < ApplicationController

  # GET /essays/new
  def new
  end

  # POST /essays
  def create
    essay = Essay.new
    
    essay.title     = params[:title]
    essay.content   = params[:content]
    essay.published = params[:published]
    
    essay.save!
    render plain: essay.inspect
  end
end
