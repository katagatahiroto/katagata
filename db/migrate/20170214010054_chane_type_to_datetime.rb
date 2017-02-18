class ChaneTypeToDatetime < ActiveRecord::Migration
  def change
    change_column :shops, :close_datetime, :datetime
  end
end
