# coding: utf-8
Clmns =
  [ :airt_name, :live_tour_name, :day_date, :plase, :list_price,
    :number_of_sheets, :seat, :shipping_method, :ticketing_state,
    :postage, :nsk, :ticket_name, :ticket_name_yes_no,
    :docide_promptly, :othertext,:price,:seat_in_detail,
    :user_id,:close_datetime
  ]

Shops=
  [
    ["醍醐", "全国","2017/04/22","東京",10,5,"A10-A14",30,700,91,93,"醍醐東京",101,200,"その他",100,"A10,A11,A12"*3,1,"2017/02/22 16:00"],
    ["ひばり","関東","2017/04/23","東京",20,5,"A10-A14",60,800,92,94,"ひばり東京",102,300,"色々",200,"A10,A11,A12"*3,2,"2017/03/2 16:00"],
    ["さゆり","全国","2017/04/24","東京",10,5,"A10-A14",30,700,91,93,"醍醐東京",101,200,"その他",300,"A10,A11,A12"*3,3,"2017/03/22 16:00"],
  ]

Shops.each{|valus|
  args = Clmns.zip(valus).to_h
  Shop.find_or_create_by args
}
