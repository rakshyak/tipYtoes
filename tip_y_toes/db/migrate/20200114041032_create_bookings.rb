class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.datetime :time
      t.string :service

      t.timestamps
    end
  end
end
