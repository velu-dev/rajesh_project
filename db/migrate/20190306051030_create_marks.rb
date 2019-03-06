class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.string :mark
      t.references :subject, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
