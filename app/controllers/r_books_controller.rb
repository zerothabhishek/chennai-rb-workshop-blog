class RBooksController < ApplicationController

  # GET /r_books/new
  def new
    @r_book = RBook.new
  end

  # POST /r_books
  def create
    book = RBook.new(book_params)
    book.save!

    # book = RBook.new(book_params_simple) 
    # book.tag_list   = params[:r_book][:tag_list]
    # book.price_data = params[:r_book][:price_data]

    render plain: book.inspect
  end
	
private
	
  def book_params
    params
      .require(:r_book)
      .permit(
        :title, 
        :content, 
        :published, 
        tag_list: [], 
        price_data: [:ebook, :audio, :paper])
  end

  def book_params_simple
    params.require(:r_book).permit(:title, :content, :published)
  end

end
