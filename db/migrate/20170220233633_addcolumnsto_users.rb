class AddcolumnstoUsers < ActiveRecord::Migration
  def change
  	  add_column :users, :raids, :boolean
  	  add_column :users, :pk, :boolean
  	  add_column :users, :zvz, :boolean
  	  add_column :users, :gathering, :boolean
  	  add_column :users, :dungeons, :boolean
  	  add_column :users, :crafting, :boolean
  	  add_column :users, :farming, :boolean
  	  add_column :users, :construct, :boolean
  	  add_column :users, :territory_feed, :boolean
  	  add_column :users, :castle, :boolean
  	  add_column :users, :warcamp, :boolean
  end
end
