class Car < ApplicationRecord
  belongs_to :user
  has_many :trades, dependent: :nullify
  has_many :posts,  dependent: :nullify
  has_many :users, through: :trades
  has_many_attached :photos

  validates :brand, :model, :color, :description, :year, :price, :address, presence: true
  validates :year, :price, numericality: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:brand, :model, :year, :color, :description],
    associated_against: {
      user: [:address]
    },
    using: {
      tsearch: { prefix: true }
    }
end
