class AddQuantityRequestedToItems < ActiveRecord::Migration
  def change
  	add_column :items, :quantity_requested, :integer
  end
end
