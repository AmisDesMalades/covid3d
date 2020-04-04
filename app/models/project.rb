class Project < ApplicationRecord
  has_and_belongs_to_many :members
  has_one_attached :thumbnail
  has_many_attached :images
  has_many_attached :stls
end
