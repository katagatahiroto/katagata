class AddImageToShop < ActiveRecord::Migration
  def change
    add_column :shops, :image, :string
    add_column :shops, :close_day, :string
  end
end
