class Station < ActiveRecord::Base

  def self.service
    @@service = NrelService.new
  end

  def self.all
    service.get_stations(param_name, param)
  end

end
