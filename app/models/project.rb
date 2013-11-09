class Project < ActiveRecord::Base
  has_many :goals
  attr_accessible :description, :name, :notes
end
