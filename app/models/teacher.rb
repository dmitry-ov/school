class Teacher < ActiveRecord::Base
  attr_accessible :name, :note, :phone, :surname, :subject_ids

  has_and_belongs_to_many :subjects
end
