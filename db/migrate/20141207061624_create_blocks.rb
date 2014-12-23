class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :type
      t.text :content
      t.references :email, index: true

      t.timestamps
    end
  end
end
