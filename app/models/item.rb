class Item < ActiveRecord::Base
  attr_accessible :name, :description, :instructions
end
