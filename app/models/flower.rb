class Flower < ApplicationRecord
    has_many :bee_flowers
    has_many :bees, through: :bee_flowers

    validates :name, presence: true, uniqueness: true
    validates :color, presence: true
    validates :pollen_capacity, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
end
