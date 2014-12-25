class ChangeContentColumnName < ActiveRecord::Migration
  def change
    rename_column :blocks, :content, :content_region_1
  end
end
