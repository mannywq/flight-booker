class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all
    @results = Flight.search(params)
  end
end
