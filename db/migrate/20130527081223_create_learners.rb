class CreateLearners < ActiveRecord::Migration
  def change
    create_table :learners do |t|
      t.string :surname
      t.string :name
      t.string :school
      t.string :school_class
      t.string :phone
      t.text :note

      t.timestamps
    end
  end
end
