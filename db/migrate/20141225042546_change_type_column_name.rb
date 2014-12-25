class ChangeTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :blocks, :type, :block_type
  end
end
