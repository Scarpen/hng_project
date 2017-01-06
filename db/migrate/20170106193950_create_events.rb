class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
    	t.text :description
    	t.date :event_date
    	t.time :event_start
    	t.time :event_end
    	t.boolean :important
    	t.integer :user_id

      t.timestamps null: false
    end
  end
end
