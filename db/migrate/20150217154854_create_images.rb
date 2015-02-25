class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.text :img_url
    	t.string :level
    end
  end
end
