class Project < ApplicationRecord
  has_and_belongs_to_many :members
  enum status: [ :research, :validation, :broadcast, :stopped ]
end
