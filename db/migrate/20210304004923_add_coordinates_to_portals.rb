class AddCoordinatesToPortals < ActiveRecord::Migration[6.0]
  def change
    add_column :portals, :address, :string
    add_column :portals, :latitude, :float
    add_column :portals, :longitude, :float
  end
end
