class AddBorrowLogToUser < ActiveRecord::Migration
  def change
    add_reference :users, :borrow_log, index: true, foreign_key: true
  end
end
