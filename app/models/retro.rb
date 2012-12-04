class Retro < ActiveRecord::Base
  attr_accessible :captured_on
  
  has_many :items, dependent: :destroy
  
  validates_presence_of :captured_on
  
  def stats
    [items.for_category(Category.fuzzy).count,
      items.for_category(Category.aha).count]
  end
end
