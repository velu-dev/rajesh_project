class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :description
      t.boolean :isactive
      t.references :user, foreign_key: true
      t.references :class_detail, foreign_key: true, optional: true
      t.timestamps
    end
  end
end
