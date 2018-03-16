class AddColorToVines < ActiveRecord::Migration[5.1]
  def change
    add_column :vines, :color, :string
  end
end
