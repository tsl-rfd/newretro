class Category < ActiveRecord::Base
  attr_accessible :name
  
  has_many :items
  
  def self.aha
    find_by_name 'aha'
  end
  
  def self.fuzzy
    find_by_name 'fuzzy'
  end
  
  
end
