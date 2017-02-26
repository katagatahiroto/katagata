class AddColumnToShop < ActiveRecord::Migration
  def change
    add_column :shops, :sub_tags, :string, limit: 255
    add_column :shops, :ref_price, :string, limit: 255, comment: '参考価格'
    add_column :shops, :number, :string, limit: 255, comment: '型番'
    add_column :shops, :comment_text, :text, comment: '商品の詳細'
    add_column :shops, :state_info, :text, comment: '商品のカテゴリー'
  end
end
