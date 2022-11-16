class Outfit < ApplicationRecord
    belongs_to :user
    has_many :outfit_clothing_items

end
