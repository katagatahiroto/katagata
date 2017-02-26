class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_text, :text, comment: '自由記入欄。'
  end
end
