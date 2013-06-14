class SubjectsTeachers < ActiveRecord::Migration
  def up
    create_table :subjects_teachers, :id => false do |t|
      t.integer :subject_id
      t.integer :teacher_id
    end

    add_index :subjects_teachers, [:subject_id, :teacher_id] 
  end

  def down
    drop_table :subjects_teachers
  end
end