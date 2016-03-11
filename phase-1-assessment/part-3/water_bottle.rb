require_relative 'reservation'

class WaterBottle
  attr_reader :capacity, :material

  include Reservation

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 2 }
    @material = args.fetch(:material) { "tin" }
  end

end
