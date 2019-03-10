class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
	  t.string :name
	  t.string :participates
	  t.string :event_date
	  t.string :event_time
	  t.string :location
	  t.references :class_detail, foreign_key: true, optional: true
      t.timestamps
    end
  end
end
