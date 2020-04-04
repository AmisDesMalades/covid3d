class Member < ApplicationRecord
  has_and_belongs_to_many :projects

  def name
    return first_name + " " + last_name
  end
end
