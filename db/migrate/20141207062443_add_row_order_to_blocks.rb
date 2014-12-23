class AddRowOrderToBlocks < ActiveRecord::Migration
  def change
    add_column :blocks, :row_order, :integer
  end
end
