class RenameItemQuantityColumn < ActiveRecord::Migration
  def change
  	rename_column :items, :quantity_remaining, :quantity
  end
end
