class Question < ActiveRecord::Base
  belongs_to :shop               #tweetsテーブルとのアソシエーション
  belongs_to :user
end
