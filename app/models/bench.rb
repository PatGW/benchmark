class Bench < ActiveRecord::Base
  attr_accessible :description, :image, :location_id

  belongs_to :location
end
