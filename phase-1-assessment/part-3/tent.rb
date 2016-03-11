require_relative 'reservation'

class Tent
  attr_reader :capacity

  include Reservation

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 3 }
  end

end
