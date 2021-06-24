class Book < ActiveRecord::Base
  #This validates presence of Book attributes when being created
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :subgenre, presence: true
  validates :pages, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :publisher, presence: true
  validates :copies, presence: true, numericality: {only_integer: true, greater_than: 0}

  has_many :borrow_logs, foreign_key: "borrow_log_id", class_name: "BorrowLog"
  belongs_to :borrow_log
end
