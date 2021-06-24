class UserMailer < ApplicationMailer
  default :from => 'no-reply@ptaginc.com'

  def welcome_email(user)
    @user = user
    mail( :to => @user.email, :subject => 'Thanks for signing up with our library' )
  end
end
