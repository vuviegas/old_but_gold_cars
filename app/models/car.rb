class Car < ApplicationRecord
  belongs_to :user
  has_many :trades, dependent: :nullify
  has_many :posts,  dependent: :nullify

  validates :brand, :model, :color, :description, :year, :price, presence: true
  validates :year, :price, numericality: true
end
