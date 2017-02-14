class ChangeNameCloseDate < ActiveRecord::Migration
  def change
    rename_column :shops, :close_date, :close_datetime
  end
end
