class AddLittleaddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :littleaddress, :string
    add_column :users, :bankname, :string
    add_column :users, :branch_name, :string
    add_column :users, :account_type, :string
    add_column :users, :account_number, :string
    add_column :users, :account_name, :string
    add_column :users, :momey, :string

  end
end
