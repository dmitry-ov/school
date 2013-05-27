class Learner < ActiveRecord::Base
  attr_accessible :name, :note, :phone, :school, :school_class, :surname

  has_and_belongs_to_many :subjects
end
