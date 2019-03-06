class CreateClassDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :class_details do |t|
      t.string :class_name
      t.string :description

      t.timestamps
    end
  end
end
