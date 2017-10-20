class Bag < ApplicationRecord
	validates :size, presence: true
	validates :color, presence: true

  belongs_to :product
  belongs_to :buyer
end
