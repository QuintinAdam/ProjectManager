class Project < ActiveRecord::Base
  has_many :goals
  attr_accessible :description, :name, :notes, :goal_attributes
  accepts_nested_attributes_for :goals, allow_destroy: true
end
