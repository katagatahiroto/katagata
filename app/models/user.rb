class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable
    #:recoverable, :rememberable, :trackable, :validatable # メール認証をしない場合はこちら
  
  validates :name, presence: true, on: :update
  validates :nickname, presence: true, on: :update, length: { in: 2..8 }
  validates :number, presence: true, on: :update, length: { is: 7 } ,numericality: { only_integer: true }
  def number=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
  end
  validates :big_address, presence: true, on: :update
  validates :subaddress, presence: true, on: :update
  validates :littleaddress, presence: true, on: :update
  validates :tel, presence: true, on: :update, numericality: { only_integer: true }
  def tel=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
  end
  validates :bankname, presence: true, on: :update
  validates :branch_name, presence: true, on: :update
  validates :account_type, presence: true, on: :update
  validates :account_number, presence: true, length: { is: 7 } ,numericality: { only_integer: true } , on: :update
  def account_number=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
  end
  KATAKANA_REGEXP = /\p{Katakana}/
  validates :account_name, presence: true, format: {with: KATAKANA_REGEXP, allow_blank: true}, on: :update



  has_many :shops, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_shops, through: :favorites, source: :shop

end


