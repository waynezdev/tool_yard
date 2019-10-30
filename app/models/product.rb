class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :user
  enum state: { ewo: 0, used: 1 }
end
