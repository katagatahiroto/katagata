class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :name, :string
    add_column :users, :kana, :string
    add_column :users, :tel, :string
    add_column :users, :number, :integer
    add_column :users, :big_address, :string
    add_column :users, :subaddress, :string
    add_column :users, :address, :string
  end
end
