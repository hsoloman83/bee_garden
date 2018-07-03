class Hive < ApplicationRecord
    has_many :bees

    validates :name, uniqueness: true, presence: true
    validates :honey_type, presence: true
end
