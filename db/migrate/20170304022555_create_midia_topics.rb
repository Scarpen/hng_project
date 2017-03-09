class CreateMidiaTopics < ActiveRecord::Migration
  def change
    create_table :midia_topics do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :result_hng
      t.integer :result_other
      t.string :enemy
      t.integer :gvg_core_id
      t.string :killboard
      t.string :video
      t.string :midia_type
      
      t.timestamps null: false
    end
  end
end
