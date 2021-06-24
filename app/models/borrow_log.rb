class BorrowLog < ActiveRecord::Base
  has_one :users, foreign_key: "user_id", class_name: "User"
  belongs_to :user
  has_one :books, foreign_key: "book_id", class_name: "Book"
  belongs_to :book
end
