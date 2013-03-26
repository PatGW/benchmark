class Location < ActiveRecord::Base
  attr_accessible :details, :name

  has_many :benches
end
