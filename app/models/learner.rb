class Learner < ActiveRecord::Base
  attr_accessible :school_area, :name, :phone, :school, :surname
  
  has_and_belongs_to_many :subjects

end
