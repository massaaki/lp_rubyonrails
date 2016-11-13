class UserNotifierMailer < ApplicationMailer

  def send_access_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'LiveIN Academy - Sua Conta de acesso CHEGOU!' )
  end

end
