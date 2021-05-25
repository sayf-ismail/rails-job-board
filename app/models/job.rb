class Job < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  belongs_to :user

  def address
    [address1].compact.join(", ")
  end
end
