class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :name
      t.text :description
      t.text :location
      t.boolean :is_charity
      t.integer :user_id
      t.text :company_type

      t.timestamps
    end
  end
end
