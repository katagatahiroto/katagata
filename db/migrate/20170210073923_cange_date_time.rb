class CangeDateTime < ActiveRecord::Migration
  def change
    change_column :shops,:time_date,:time
    change_column :shops,:day_date ,:date
    change_column :shops,:close_date ,:date
    change_column :shops,:plase,:string,default: ""
    change_column :shops,:seat_in_detail,:string,default: ""
    change_column :shops,:airt_name,:string,default: ""
    change_column :shops,:live_tour_name,:string,default: ""
  end
end
