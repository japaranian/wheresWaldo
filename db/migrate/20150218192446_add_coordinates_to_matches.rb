class AddCoordinatesToMatches < ActiveRecord::Migration
  def change
  	add_column :matches, :xcoordinate, :integer
  	add_column :matches, :ycoordinate, :integer
  end
end
