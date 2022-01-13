class BooksController < ApplicationController
  def new
  end

  def index
    @books=Book.all
    @book=Book.new(params[:id])
  end

  def show
    @book=Book.find(params[:id])
  end

  def create
    @book=Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end
  
  def edit
    @book=Book.find(params[:id])
  end

  def book
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
