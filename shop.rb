class Shop < ActiveRecord::Base
  belongs_to :user
  has_many :questions              #commentsテーブルとのアソシエーション
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy #User:Favorite => 1:多 追加
  # has_many :users, through: :favorites #追加



  enum list_price: {men: 10 ,women: 20 ,others: 30}
  enum shipping_method: {post: 30 ,hand_sent: 60}
  enum ticketing_state: {have: 700 ,not_have: 800}
  enum postage: {postage_in: 91 , postage_out: 92}
  enum nsk: {seiki: 93 ,c2c: 94 ,present: 95 ,other: 96}
  enum ticket_name_yes_no: {name_yes: 101 ,name_no: 102}
  enum docide_promptly: {within_24_hours: 200 ,within_3day: 300 ,within_7day: 400 ,other_day:500}
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def price=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
  end
  validates :airt_name, presence: true
  validates :live_tour_name, presence: true
  validates :day_date, presence: true
  validates :plase, presence: true
  validates :list_price, presence: true
  validates :number_of_sheets, presence: true
  validates :seat, presence: true
  validates :shipping_method, presence: true
  validates :ticketing_state, presence: true
  validates :postage, presence: true
  validates :nsk, presence: true
  validates :ticket_name, presence: true
  validates :ticket_name_yes_no, presence: true
  validates :docide_promptly, presence: true
  validates :othertext, presence: true

end
# ,:exclusion => { :in => :post },:exclusion => { :in => :store_ticket }
