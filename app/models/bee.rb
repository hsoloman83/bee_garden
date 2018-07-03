class Bee < ApplicationRecord
  belongs_to :hive
  has_many :bee_flowers
  has_many :flowers, through: :bee_flowers
end
