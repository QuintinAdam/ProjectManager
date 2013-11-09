class Project < ActiveRecord::Base
  has_many :goals
  has_many :tasks
  attr_accessible :description, :name, :notes, :goal_attributes, :task_attributes
  accepts_nested_attributes_for :goals, allow_destroy: true
  accepts_nested_attributes_for :tasks, allow_destroy: true
end
