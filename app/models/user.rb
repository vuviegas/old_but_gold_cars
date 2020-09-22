class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trades, dependent: :destroy
  has_many :cars,   dependent: :destroy
  has_many :posts,  dependent: :destroy
end
