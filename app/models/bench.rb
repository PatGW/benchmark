class Bench < ActiveRecord::Base
  attr_accessible :description, :image, :location_id

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  belongs_to :location
end
