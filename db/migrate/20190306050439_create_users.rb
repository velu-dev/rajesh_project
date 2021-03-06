class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :mobile
      t.references :role, foreign_key: true
      t.references :class_detail  , foreign_key: true

      t.timestamps
    end
  end
end
