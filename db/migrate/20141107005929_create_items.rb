class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.integer :category_id
      t.text :description
      t.integer :quantity
      t.integer :quantity_remaining
      t.text :instructions
      t.integer :event_id

      t.timestamps
    end
  end
end
