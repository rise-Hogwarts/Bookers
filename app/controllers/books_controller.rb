class BooksController < ApplicationController
  def new
  end

  def index
    @book=Book.all
  end

  def create
    book = Book.show(book_params)
    book.save
    redirect_to '/books/show'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

private
 def book_params
   params.require(:book).permit(:title,:body)
 end


end
