class AddCoordinatesTo < ActiveRecord::Migration[5.1]
  def change
    add_column :vines, :latitude, :float
    add_column :vines, :longitude, :float
  end
end
