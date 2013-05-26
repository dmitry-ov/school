class CreateLearnersSubjects < ActiveRecord::Migration
  def up
    create_table :learners_subjects, :id => false do |t|
      t.integer :learner_id
      t.integer :subject_id
    end

    add_index :learners_subjects, [:learner_id, :subject_id]  
  end

  def down
    drop_table :learners_subjects
  end
end
