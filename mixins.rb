module Geolocatable
  EARTH_MEAN_RADIUS = 6371
  
  attr_accessor :lat, :lng
  
  def distance_from(point)
    lat_diff = point.lat - self.lat
    lng_diff = point.lng - self.lng

    a = Math.sin(lat_diff/2) * Math.sin(lat_diff/2) +
        Math.cos(self.lat) * Math.cos(point.lat) * Math.sin(lng_diff/2) * Math.sin(lng_diff/2)
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    d = EARTH_MEAN_RADIUS * c
    
    return d
  end
end

class Float
  
  def kms_in_ms
    self * 1000
  end
  
end

class User
  include Geolocatable
  attr_accessor :name, :password
  
  def initialize(options = {})
    options.each do |k,v|
      self.send("#{k}=",v)
    end
  end
end

class Location
  include Geolocatable
  attr_accessor :name
  
  def initialize(options = {})
    options.each do |k,v|
      self.send("#{k}=",v)
    end
  end
end