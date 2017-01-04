class CreatePermitions < ActiveRecord::Migration
  def change
    create_table :permitions do |t|
    	t.string :name
    	t.integer :permition
      t.timestamps null: false
    end
  end
end
