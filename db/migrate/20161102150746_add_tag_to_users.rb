class AddTagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :identification, :string
  end
end
