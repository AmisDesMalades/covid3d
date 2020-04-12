class Publication < ApplicationRecord
  has_one_attached :image
  enum category: [:presse, :publication]
end
