# coding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :omniauthable
    #:recoverable, :rememberable, :trackable, :validatable # メール認証をしない場合はこちら
  devise :omniauthable, :omniauth_providers => [:facebook, :twitter]
  
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
  validates :tel, presence: true, on: :update
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

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    User.dummy_email(auth),
        password: Devise.friendly_token[0, 20]
      )
    end

    user
  end

    def self.from_omniauth(auth)
      # emailの提供は必須とする
      user = User.where('email = ?', auth.info.email).first
      if user.blank?
        user = 
          User.create( {uid: auth.uid, name: auth.info.name,email: auth.info.email,
                         oauth_token: auth.credentials.token, 
                         oauth_expires_at: Time.at(auth.credentials.expires_at),
                         confirmed_at: Time.now,
                         confirmation_sent_at: Time.now ,
                         password: "dumy_password",
                         nickname: "nickname", number: "1234567", big_address: "big_address",
                         subaddress: "subaddress", littleaddress: "littleaddress",
                         tel: "01234567",
                         bankname: "my bunk",branch_name: "branch_name",
                         account_type: "dumy",account_number: "1234567",
                         account_name: "ｱｶｳﾝﾄ ﾅﾏｴ"
                         }
                       )
      else
        user.update(uid: auth.uid, name: auth.info.name,email: auth.info.email,
                      oauth_token: auth.credentials.token,
                      oauth_expires_at: Time.at(auth.credentials.expires_at),
                      nickname: "nickname", number: "1234567", big_address: "big_address",
                      subaddress: "subaddress", littleaddress: "littleaddress",
                      tel: "01234567",
                      bankname: "my bunk",branch_name: "branch_name",
                      account_type: "dumy",account_number: "1234567",
                      account_name: "ｱｶｳﾝﾄ ﾅﾏｴ"
                    )
      end
      user
    end


  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end


