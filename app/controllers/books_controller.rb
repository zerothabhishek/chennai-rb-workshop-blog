class BooksController < ApplicationController

  # GET /books/new
  def new
  end

  # POST /books/save
  def save
    
    # Pricing examples
    pricing1 = { ebook: 100, audio: 200, paper: 400 }
    pricing2 = { ebook: 150, audio: 250 }
    pricing3 = { ebook: 400 }

    final_price = {}
    params[:pricing].each_pair do |pricing_type, price_value|
      next if price_value.empty?
      final_price[pricing_type] = price_value
    end

    book = Book.new
    book.title     = params[:title]
    book.content   = params[:content]
    book.tags      = params[:tags].join(',')
    book.published = params[:published]
    book.pricing   = final_price.to_json
    book.save!
    render plain: book.inspect
  end
	
	
end
