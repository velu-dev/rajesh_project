class CreateCirculars < ActiveRecord::Migration[5.2]
  def change
    create_table :circulars do |t|
      t.string :content
      t.string :desc
      t.string :c_date
      t.references :class_detail, foreign_key: true, optional: true
      t.timestamps
    end
  end
end
