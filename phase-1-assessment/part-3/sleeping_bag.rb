require_relative 'reservation'

class SleepingBag
  attr_reader :style, :size, :shell

  include Reservation

  def initialize(args = {})
    @style = args.fetch(:style) { "rectangular" }
    @size = args.fetch(:size) { "adult" }
    @shell = args.fetch(:shell) { "nylon" }
  end

end
