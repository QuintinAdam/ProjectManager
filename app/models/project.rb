class Project < ActiveRecord::Base
  attr_accessible :description, :name, :notes
end
