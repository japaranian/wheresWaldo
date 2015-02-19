class AddCoordinatesToImages < ActiveRecord::Migration
  def change
  	add_column :images, :xcoordinate, :integer
  	add_column :images, :ycoordinate, :integer
  end
end
