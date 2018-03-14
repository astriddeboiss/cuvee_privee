class CreateVines < ActiveRecord::Migration[5.1]
  def change
    create_table :vines do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.text :description
      t.string :picture
      t.integer :price
      t.string :location
      t.string :variety

      t.timestamps
    end
  end
end
