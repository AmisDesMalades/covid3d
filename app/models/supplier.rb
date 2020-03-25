class Supplier < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, 
    if: ->(obj){ obj.full_address.present? and obj.full_address_changed? }
end
