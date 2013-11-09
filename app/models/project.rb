class Project < ActiveRecord::Base
  has_many :goals
  has_many :tasks
  has_many :members
  attr_accessible :description, :name, :notes, :goal_attributes, :task_attributes, :member_attributes
  accepts_nested_attributes_for :goals, allow_destroy: true
  accepts_nested_attributes_for :tasks, allow_destroy: true
  accepts_nested_attributes_for :members, allow_destroy: true
end
