class AddBookToBorrowLog < ActiveRecord::Migration
  def change
    add_reference :borrow_logs, :book, index: true, foreign_key: true
  end
end
