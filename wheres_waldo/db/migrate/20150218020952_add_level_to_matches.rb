class AddLevelToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :level, :string
  end
end
