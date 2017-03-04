class InquiryMailer < ActionMailer::Base
  default from: "otoku-na@highlows.jp"    # 送信元アドレス
  default to: "support-help@highlows.jp"     # 送信先アドレス
  default to: "support@highlows.jp"          # 送信先アドレス
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
 
end