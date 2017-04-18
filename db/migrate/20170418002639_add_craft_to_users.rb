class AddCraftToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :crafts, :text
  end
end
