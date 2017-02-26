class AddMadeinToShops < ActiveRecord::Migration
  def change
    add_column :shops, :madein, :string, comment: '生産地（国）'
    add_column :shops, :accessories, :integer, comment: '付属品の有無'
    add_column :shops, :accessories_info, :string, comment: '付属品詳細'
  end
end
