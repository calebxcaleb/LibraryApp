class AddUserToBorrowLog < ActiveRecord::Migration
  def change
    add_reference :borrow_logs, :user, index: true, foreign_key: true
  end
end
