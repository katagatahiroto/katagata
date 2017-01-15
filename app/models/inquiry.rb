class Inquiry
  include ActiveModel::Model
 
  attr_accessor :name, :email, :message, :typeselect
 
  validates :name, :presence => {:message => '名前を入力してください'}
  validates :email, :presence => {:message => 'メールアドレスを入力してください'}
  validates :typeselect, :presence => {:message => 'お問い合わせ内容を選択してください'}
end