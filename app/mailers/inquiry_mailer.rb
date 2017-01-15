class InquiryMailer < ActionMailer::Base
  default from: "information@ticket-navi.net"    # 送信元アドレス
  default to: "support-help@ticket-navi.net"     # 送信先アドレス
  default to: "support@ticket-navi.net"          # 送信先アドレス
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
 
end