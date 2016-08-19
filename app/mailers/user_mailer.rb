class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_reg.subject
  #
  def notify_reg
    @greeting = "Hi"

    mail to: "yang5664@gmail.com"
  end
end
