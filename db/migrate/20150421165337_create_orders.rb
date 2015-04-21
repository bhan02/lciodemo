class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :school
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone_number
      t.string :desired_PD_dates

      t.timestamps null: false
    end
  end
end
