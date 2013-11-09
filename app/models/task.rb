class Task < ActiveRecord::Base
  belongs_to :project
  attr_accessible :done, :order, :task
end
