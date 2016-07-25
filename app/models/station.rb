class Station < ActiveRecord::Base

  def self.service
    @@service = NrelService.new
  end

  def self.find_all(param)
    service.get_stations(param)
  end

end
