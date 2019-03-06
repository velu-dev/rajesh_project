class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :exam_name
      t.string :date_of_exam
      t.boolean :isactive
      t.references :class_detail, foreign_key: true
      t.timestamps
    end
  end
end
