class AddPlayersToMidia < ActiveRecord::Migration
  def change
  	add_column :midia_topics, :players, :string
  	add_column :midia_topics, :enemies, :string
  	add_column :midia_topics, :map, :string
  	add_column :midia_topics, :gvg_type, :string
  end
end
