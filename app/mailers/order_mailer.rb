class OrderMailer < ApplicationMailer
  default from: 'nakayama839@gmail.com' 
 
  def received_email(order)
    @order = order
    mail to: "sksk14@icloud.com"
    mail(subject: 'webサイトよりメッセージが届きました') do |format|
      format.text
    end
  end
end
