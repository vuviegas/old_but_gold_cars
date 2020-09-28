class Car < ApplicationRecord
  belongs_to :user
  has_many :trades, dependent: :nullify
  has_many :posts,  dependent: :nullify
  has_many :users, through: :trades
  has_many_attached :photos

  validates :brand, :model, :color, :description, :year, :price, presence: true
  validates :year, :price, numericality: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:brand, :model, :year, :color, :description, :address],
    # associated_against: {
    #   user: [:address]
    # },
    using: {
      tsearch: { prefix: true }
    }
end
