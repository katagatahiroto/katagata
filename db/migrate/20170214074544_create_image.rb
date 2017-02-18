class CreateImage < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string   "image",              limit: 255
      t.integer  :shop_id
    end
  end
end
