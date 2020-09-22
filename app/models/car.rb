class Car < ApplicationRecord
  belongs_to :user
  has_many :trades, dependent: :destroy
  has_many :posts,  dependent: :destroy

  validates :brand, :model, :color, :description, :year, :price, presence: true
  validates :year, :price, numericality: true
end
