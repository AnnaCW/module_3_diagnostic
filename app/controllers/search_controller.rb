class SearchController < ApplicationController

  def index
    @stations = Station.find_all(param_name, param)
  end
end
