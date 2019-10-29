class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :user
  enum condition: { new: 0, used: 1}
end
