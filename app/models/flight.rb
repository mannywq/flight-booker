class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings, dependent: :destroy
  has_many :passengers, through: :bookings

  def self.search(params)
    return nil unless params[:flight].present?

    params = params[:flight]

    query = Flight.all

    if params[:departure_airport].present? && params[:arrival_airport].present?
      puts 'Found the params'

      query = query.joins(:departure_airport,
                          :arrival_airport)
                   .where(airports: { code: params[:departure_airport] }, arrival_airport: { code: params[:arrival_airport] })

    end

    puts "Count is #{query.count}"
    puts "Params provide #{params[:departure_airport]}"
    puts "Query is #{query.inspect}"
    query
  end
end
