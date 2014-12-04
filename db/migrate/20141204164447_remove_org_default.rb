class RemoveOrgDefault < ActiveRecord::Migration
  def change
  	change_column_default :users, :organization, nil
  end
end
