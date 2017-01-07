class AddCoreStatusToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :core_status, :integer
  	add_column :users, :recruitment_access, :boolean
  end
end
