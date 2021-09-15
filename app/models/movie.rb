class Movie < ApplicationRecord
    validates :name, presence: true

    has_many :casts
    has_many :actors, through: :casts
end
