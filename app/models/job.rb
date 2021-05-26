class Job < ApplicationRecord
  before_save :geocode_endpoints

  private
  #To enable Geocoder to works with multiple locations
  def geocode_endpoints
      geocoded = Geocoder.search(address1).first
      if geocoded
        self.lat1 = geocoded.latitude
        self.long1 = geocoded.longitude
      end

    # Repeat for destination
      geocoded = Geocoder.search(address2).first
      if geocoded
        self.lat2 = geocoded.latitude
        self.long2 = geocoded.longitude
      end
  end
end
