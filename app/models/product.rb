class Product < ActiveRecord::Base
  validates :price, numericality: { greater_than: 0, allow_nil: true}
  # allow_nil - make a possibility to get acquainted with the activity 
  # or make a pre-order of the activity when price is unknown
  validates :title, presence: true, length: {minimum: 10}
  validates :title, :description, :image_url, presence: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

end
