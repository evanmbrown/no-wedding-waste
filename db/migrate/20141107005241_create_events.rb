class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.date :date
      t.time :end
      t.text :location
      t.text :instructions
      t.integer :user_id

      t.timestamps
    end
  end
end
