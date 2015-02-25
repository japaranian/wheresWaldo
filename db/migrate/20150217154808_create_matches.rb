class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.integer :winner
    	t.integer :loser
    	t.integer :image_id
    	t.timestamps
    end
  end
end
