class NrelService

  def initialize
    @conn = Faraday.new("https://api.data.gov/nrel/alt-fuel-stations/v1.json")
    @conn.headers['X-Api-Key'] = "#{ENV[NREL_KEY]}"
  end

  def get_stations(param_name, param)
    conn.get("?#{param_name=param}")
  end

  private

  def conn
    @conn
  end
end
