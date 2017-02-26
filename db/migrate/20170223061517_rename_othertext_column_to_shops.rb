class RenameOthertextColumnToShops < ActiveRecord::Migration
  def change
    rename_column :shops, :othertext, :item_name
    rename_column :shops, :list_price, :female
    rename_column :shops, :plase, :big_tags
    rename_column :shops, :live_tour_name, :state
    rename_column :shops, :ticketing_state, :certificate
    rename_column :shops, :seat, :color
    rename_column :shops, :number_of_sheets, :size
    rename_column :shops, :ticket_name, :material
  end
end
