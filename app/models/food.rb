class Food < ApplicationRecord
  belongs_to :venue
   enum food_type: [veg: 0, non_veg: 1]
end
