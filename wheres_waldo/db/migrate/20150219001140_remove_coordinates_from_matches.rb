class RemoveCoordinatesFromMatches < ActiveRecord::Migration
  def change
  	remove_column :matches, :xcoordinate
  	remove_column :matches, :ycoordinate
  end
end
