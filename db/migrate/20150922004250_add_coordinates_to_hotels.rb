class AddCoordinatesToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :latitude, :float
    add_column :hotels, :longitude, :float
    add_column :hotels, :address, :string
  end
end
