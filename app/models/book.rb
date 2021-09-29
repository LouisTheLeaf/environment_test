
require 'date'

class Book < ApplicationRecord
  validates :title, presence:true
  validates :author, presence:true
  validates :price, presence:true
  validates :published_date, presence:true

#COMMENTING THIS OUT FIXED ERROR THAT DIDN'T
#   LET INFO BE SUBMITTED SINCE IT WAS "BLANK"
# => https://cdn.discordapp.com/attachments/385944274627198977/892808491306201228/unknown.png
#  def title=(value)
#    @title = value
#  end
#  def author=(value)
#    @author = value
#  end
#  def price=(value)
#    @price = value
#  end
#  def published_date=(value)
#    @published_date = value
#  end
end
