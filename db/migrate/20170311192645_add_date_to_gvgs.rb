class AddDateToGvgs < ActiveRecord::Migration
  def change
  	add_column :midia_topics, :event_date, :date
  	add_column :midia_topics, :event_time, :time
  end
end
