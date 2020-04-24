class ApplicationRecord < ActiveRecord::Base

  validates :title, length: {minimum:10, message: "must be 10 characters or longer"}
  validates :title, uniqueness: true
  
  validates :description, :image_url, presence: true
  validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.'}
  
  validates :price, numericality: {greater_than_or_equal_to: 0.01, message: "must be a valid amount"}


  self.abstract_class = true
end
