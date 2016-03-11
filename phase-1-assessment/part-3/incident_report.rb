require_relative 'report'

class IncidentReport < Report
  attr_reader :reporter

  def initialize(args = {})
    super
    @reporter = args.fetch(:reporter) { "anonymous" }
  end
end

