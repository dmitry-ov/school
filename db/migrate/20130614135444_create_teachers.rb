class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.text :note

      t.timestamps
    end
  end
end
