class Entry < ActiveRecord::Base
  belongs_to :present

  validates_presence_of :nickname
  validates_presence_of :email
end
