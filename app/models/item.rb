class Item < ActiveRecord::Base
  attr_accessible :name, :description, :instructions, :created_at
end
