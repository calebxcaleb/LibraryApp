class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_admin, only: [:new, :edit]
  before_action :store_location

  # Index action to render all books
  def index
    @q = Book.ransack(params[:q])
    @q.sorts = 'title asc' if @q.sorts.empty?
    @books = @q.result.limit(20)
  end

  # New action for creating book
  def new
    @book = Book.new
  end

  def edit
  end

  # Create action saves the book into database
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Successfully created book!"
      redirect_to book_path(@book)
    else
      flash[:alert] = "Error creating new book!"
      render :new
    end
  end

  # check if current user is an admin for admin only paths
  def check_admin
    redirect_to root_path unless current_user.is_admin?
  end

  # Update action updates the book with the new information
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book)
      # redirect_to(:action => 'book#show')
    else
      render 'edit'
    end
  end

  # The show action renders the individual book after retrieving the the id
  def show
  end

  # The destroy action removes the book permanently from the database
  def destroy
    @book = Book.find(params[:id])

    # delete the logs that contained this book
    BorrowLog.all.each do |borrow_log|
      if borrow_log.book_id.to_i == @book.id
        borrow_log.destroy
      end
    end

    if @book.destroy
      flash[:notice] = "Successfully deleted book!"
      redirect_to root_path
    else
      flash[:alert] = "Error deleting book!"
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :subgenre, :pages, :publisher, :copies)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end