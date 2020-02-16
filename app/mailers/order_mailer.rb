class OrderMailer < ApplicationMailer
  default from: 'nakayama839@gmail.com' 
 
  def received_email(order)
    @order = order
    mail(subject: 'webサイトよりメッセージが届きました',to: "sksk14@icloud.com") do |format|
      format.text
    end
  end
end
