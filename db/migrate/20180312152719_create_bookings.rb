class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :vine, foreign_key: true
      t.date :start_at
      t.string :status
      t.integer :duration
      t.integer :quantity

      t.timestamps
    end
  end
end
