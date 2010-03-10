class Team < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name
  
  def with_extra_users(extra=2)
    extra.times { users.build }
    self
  end
  
  has_many :users
  accepts_nested_attributes_for :users
end
