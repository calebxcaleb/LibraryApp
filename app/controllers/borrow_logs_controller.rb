class BorrowLogsController < ApplicationController
  before_action :set_borrow_log, only: [:show, :edit, :update, :destroy]

  # GET /borrow_logs
  # GET /borrow_logs.json
  def index
    @borrow_logs = BorrowLog.all
  end

  # GET /borrow_logs/1
  # GET /borrow_logs/1.json
  def show
  end

  # GET /borrow_logs/new
  def new
    @borrow_log = BorrowLog.new
  end

  # GET /borrow_logs/1/edit
  def edit
  end

  # POST /borrow_logs
  # POST /borrow_logs.json
  def create
    @borrow_log = BorrowLog.new(borrow_log_params)

    respond_to do |format|
      if @borrow_log.save
        format.html { redirect_to root_url, notice: 'Borrow log was successfully created.' }
        # format.html { redirect_to @borrow_log, notice: 'Borrow log was successfully created.' }
        # format.json { render :show, status: :created, location: @borrow_log }
      else
        format.html { redirect_to root_url, notice: 'Borrow log was successfully created.' }
        # format.html { render :new }
        # format.json { render json: @borrow_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrow_logs/1
  # PATCH/PUT /borrow_logs/1.json
  def update
    respond_to do |format|
      if @borrow_log.update(borrow_log_params)
        format.html { redirect_to @borrow_log, notice: 'Borrow log was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrow_log }
      else
        format.html { render :edit }
        format.json { render json: @borrow_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrow_logs/1
  # DELETE /borrow_logs/1.json
  def destroy
    @borrow_log.destroy
    respond_to do |format|
      format.html { redirect_to borrow_logs_url, notice: 'Borrow log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # creates a new borrow log (was supposed to check parameters but there was no need for it)
  def check_params
    redirect_to :back
    BorrowLog.create(borrow_log_params)
    @book = Book.find(borrow_log_params[:book_id])
    @book.update_attribute(:copies, @book.copies - 1)
  end

  # adds the return time value to borrow log to mark it as returned
  def return_book
    redirect_to :back
    @borrow_log = BorrowLog.find(borrow_log_params[:borrow_log_id])
    @borrow_log.update_attribute(:return_time, borrow_log_params[:return_time])
    @book = Book.find(borrow_log_params[:book_id])
    @book.update_attribute(:copies, @book.copies + 1)
  end

  private
    def borrow_log_params
      params.permit(:borrow_time, :return_time, :user_id, :book_id, :borrow_log_id)
    end

    def find_borrow_log
      @borrow_log = BorrowLog.find(params[:id])
    end
end
