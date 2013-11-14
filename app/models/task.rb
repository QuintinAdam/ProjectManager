class Task < ActiveRecord::Base
  belongs_to :project 
  attr_accessible :done, :position, :task

  acts_as_list
end 
