class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all
  end

  private

  def flight_params
    params.require(:flight).require(:departure_airport, :arrival_airport,
                                    :num_pax, :departure_time)
  end
end
