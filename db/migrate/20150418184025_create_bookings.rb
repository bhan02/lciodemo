class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :school
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone_number
      t.text :desired_dates

      t.timestamps null: false
    end
  end
end
