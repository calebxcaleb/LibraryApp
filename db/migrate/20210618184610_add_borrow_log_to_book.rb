class AddBorrowLogToBook < ActiveRecord::Migration
  def change
    add_reference :books, :borrow_log, index: true, foreign_key: true
  end
end
