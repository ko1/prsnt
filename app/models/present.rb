class Present < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :quantity
  validates_numericality_of :quantity
end
