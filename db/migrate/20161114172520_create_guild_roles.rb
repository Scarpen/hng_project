class CreateGuildRoles < ActiveRecord::Migration
  def change
    create_table :guild_roles do |t|

    	t.string :name
    	t.string :function
    	t.integer :permition

      t.timestamps null: false
    end
  end
end
