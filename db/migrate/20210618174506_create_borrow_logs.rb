class CreateBorrowLogs < ActiveRecord::Migration
  def change
    create_table :borrow_logs do |t|
      t.datetime :borrow_time
      t.datetime :return_time
      t.integer :user_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
