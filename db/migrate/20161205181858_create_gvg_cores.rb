class CreateGvgCores < ActiveRecord::Migration
  def change
    create_table :gvg_cores do |t|
      t.string :name
      t.text :description
      t.boolean :recruiting
      t.text :recruiting_description
      t.string :avatar
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
