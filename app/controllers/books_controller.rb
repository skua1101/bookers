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
    if @book.save
       flash[:notice] = "Book was succwssfully created"
       redirect_to book_path(@book)
    else
      render :new
    end
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def book
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
