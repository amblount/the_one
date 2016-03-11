require_relative 'segment'

class RoadTrip


  attr_accessor :segments, :name, :sum

  def initialize(args = {})
    @name = args[:name]
    @segments = args[:segments]

  end

  def add_segment(segment)
    @segments << segment
  end

  def total_miles
    total = []
    @segments.each do |trip|
      total << trip.miles
    end
      @sum = total.reduce(:+)
      @sum
  end

  def average_miles_per_segment
    total_miles
    @sum / @segments.length
  end

end

segments = [Segment.new(miles: 500), Segment.new(miles: 750)]
road_trip = RoadTrip.new(name: 'Trip to SF', segments: segments)


road_trip.average_miles_per_segment
