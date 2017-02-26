# coding: utf-8
class Shop < ActiveRecord::Base
  belongs_to :user
  has_many :questions              #commentsテーブルとのアソシエーション
  #mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy #User:Favorite => 1:多 追加
  
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  
  # has_many :users, through: :favorites #追加

  attr_accessor :close_date, :close_time

  enum list_price: {men: 10 ,women: 20 ,full: 30 ,others: 40}
  enum shipping_method: {post: 30 ,hand_sent: 60}
  enum ticketing_state: {have: 700 ,not_have: 800}
  enum postage: {postage_in: 91 , postage_out: 92}
  enum nsk: {seiki: 93 ,c2c: 94 ,present: 95 ,other: 96}
  enum ticket_name_yes_no: {name_yes: 101 ,name_no: 102}
  enum docide_promptly: {within_24_hours: 200 ,within_3day: 300 ,within_7day: 400 ,other_day:500}
  enum accessories: {hi: 111 ,low: 222}
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 1401 }
  validates :ref_price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def price=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
  end

  validates :airt_name, presence: true
  validates :female, presence: true
  validates :big_tags, presence: true
  validates :sub_tags, presence: true
  validates :state, presence: true
  validates :day_date, presence: true
  validates :price, presence: true
  validates :ref_price, presence: true
  validates :certificate, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :material, presence: true
  validates :number, presence: true
  validates :nsk, presence: true
  validates :ticket_name_yes_no, presence: true
  validates :shipping_method, presence: true
  validates :postage, presence: true
  validates :docide_promptly, presence: true
  validates :close_date, presence: true
  validates :comment_text, presence: true
  validates :state_info, presence: true
  validates :madein, presence: true
  validates :accessories, presence: true
  validates :item_name, presence: true


  # before_save :set_close_datetime

  # def set_close_datetime
  #   self.close_datetime ||= day_date
  # end
  def time_date_hm ; time_date && time_date.strftime("%H:%M") ; end
  
  def rest_time
    close_datetime ? (close_datetime - Time.now) : nil
  end
  def rest_time_code(sec = rest_time)
    return "" unless sec
    if    sec <= 0       ; "終了"
    elsif sec >  90.day  ; "3ヶ月"
    elsif sec >  59.day  ; "2ヶ月"
    elsif sec >  27.day  ; "1ヶ月"
    elsif sec >=  7.day  ; "%d週間"%(sec/7.day)
    elsif sec >= 24.hour ; "%d日"%(sec/24.hour)
    elsif sec >= 60.minute ; "%d時間"%(sec/60.minute)
    else       ;     "%d分"%( ten_min = (sec/600).to_i * 10)
    end
  end
end
# ,:exclusion => { :in => :post },:exclusion => { :in => :store_ticket }
