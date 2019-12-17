class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'nakayama839@gmail.com',
      to:   'sksk14@icloud.com',
      subject: '配達依頼'
    )
  end
end
