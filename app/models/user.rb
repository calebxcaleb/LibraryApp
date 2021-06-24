class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :borrow_logs, foreign_key: "borrow_log_id", class_name: "BorrowLog"
  belongs_to :borrow_log

  after_create :send_welcome_email
  def send_welcome_email
    UserMailer.welcome_email(self).deliver
  end

end
