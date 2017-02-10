# coding: utf-8
Columns =
  [:email,:password,:nickname,:name,:kana,:number,:big_address,:subaddress,:littleaddress,:tel,:bankname,:branch_name,:account_type,:account_number,:account_name].
  zip(["user%d@example.com","password","ニックネーム","宮本武蔵","ミヤモトムサシ",
       1111111,"神奈川県","小田原市","荻町","0452341234",
       "みずほ","小田原","普通",1234560,"ミヤモトムサシ"]).to_h

(1..9).each{|id|
  user = User.find_or_create_by(id: id)
  arg=Columns.dup
  arg[:email] = arg[:email]%id
  arg[:number] = arg[:number]*id
  arg[:account_number] = arg[:account_number]+id
  arg[:confirmed_at] = Time.now
  user.update(arg)
  user.update(confirmed_at: Time.now)
  puts user.errors.messages
}
  
  
