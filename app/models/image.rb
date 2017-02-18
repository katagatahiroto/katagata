# coding: utf-8
class Image < ActiveRecord::Base
  belongs_to :shop
  mount_uploader :image, ImageUploader
end
