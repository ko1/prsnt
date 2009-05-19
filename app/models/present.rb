class Present < ActiveRecord::Base
  has_many :entries

  validates_presence_of :name
  validates_presence_of :quantity
  validates_numericality_of :quantity
end
