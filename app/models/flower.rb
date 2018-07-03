class Flower < ApplicationRecord
    has_many :bee_flowers
    has_many :bees, through: :bee_flowers
end
