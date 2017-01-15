class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :user, null:false #外部キー 追加
      t.references :shop, null:false #外部キー 追加
      t.timestamps null: false
    end
      add_index :favorites, :user_id #インデックス
      add_index :favorites, :shop_id #インデックス
  end
end
