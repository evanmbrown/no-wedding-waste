class AddTypeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :organization, :boolean, default: false  	
  end
end
