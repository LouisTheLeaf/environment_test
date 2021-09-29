
require 'date'

class Book < ApplicationRecord
  validates :title, presence:true
  validates :author, presence:true
  validates :price, presence:true
  validates :published_date, presence:true

  def title=(value)
    @title = value
  end
  def author=(value)
    @author = value
  end
  def price=(value)
    @price = value
  end
  def published_date=(value)
    @published_date = value
  end
end
