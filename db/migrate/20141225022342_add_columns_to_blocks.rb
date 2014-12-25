class AddColumnsToBlocks < ActiveRecord::Migration
  def change
    add_column :blocks, :content_region_2, :text
  end
end
