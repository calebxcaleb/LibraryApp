class DropTableBorrowLog < ActiveRecord::Migration
  def change
    drop_table :borrow_logs
  end
end
