class CreateGuestHotels < ActiveRecord::Migration
  def change
    create_table :guest_hotels do |t|
      t.integer :guest_id
      t.integer :hotel_id
      t.integer :nights
      t.date :checkin_date
      t.date :checkout_date

      t.timestamps null: false
    end
  end
end
