class Item < ActiveRecord::Base
  attr_accessible :category_id, :note, :retro_id
  
  belongs_to :category
  belongs_to :retro

  def self.for_category(category)
    where(category_id: category.id)
  end
end
