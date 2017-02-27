# coding: utf-8
class Image < ActiveRecord::Base
  belongs_to :shop
  mount_uploader :image, ImageUploader

  before_destroy :remove_images
  def remove_images
    remove_avatar!
  end
end
