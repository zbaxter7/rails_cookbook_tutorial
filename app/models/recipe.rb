class Recipe < ActiveRecord::Base
  validates_presence_of :title, :ingredients, :instructions
  validates_uniqueness_of :title 
end
