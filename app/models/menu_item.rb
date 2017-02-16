class MenuItem < ApplicationRecord
	belongs_to :menu

	validates :title, :description, :price, presence: true
end
