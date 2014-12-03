class UpdateCategoryFieldInItems < ActiveRecord::Migration
  def change
  	rename_column :items, :category_id, :item_category_id
  end
end
