class Project < ActiveRecord::Base
  belong to :user
  has_many :goals
  has_many :tasks
  has_many :members

  attr_accessible :description, :name, :notes, :goals_attributes, :tasks_attributes, :members_attributes
  
  accepts_nested_attributes_for :goals, reject_if: proc { |attributes| attributes['goal'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :tasks, reject_if: proc { |attributes| attributes['task'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :members, :reject_if => :all_blank, allow_destroy: true
 
  
end
