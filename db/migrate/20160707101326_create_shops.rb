class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :live_tour_name
      t.string :airt_name
      t.string :time_date
      t.string :day_date
      t.string :close_date
      t.string :plase
      t.integer :user_id
      t.string :price
      t.integer :list_price
      t.integer :number_of_sheets
      t.integer :serial_number
      t.integer :seat
      t.integer :shipping_method
      t.integer :ticketing_state
      t.integer :postage
      t.integer :nsk
      t.integer :ticket_name
      t.integer :ticket_name_yes_no
      t.text :seat_in_detail
      t.integer :docide_promptly
      t.text :othertext

      t.timestamps
    end
  end
end
