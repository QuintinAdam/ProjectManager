class Goal < ActiveRecord::Base
  belongs_to :project
  attr_accessible :done, :goal
end
