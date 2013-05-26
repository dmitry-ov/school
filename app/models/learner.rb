class Learner < ActiveRecord::Base
  attr_accessible :class, :name, :phone, :school, :surname
  
  has_and_belongs_to_many :subjects

end
