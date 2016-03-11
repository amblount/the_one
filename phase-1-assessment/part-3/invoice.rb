require_relative 'employee'
require_relative 'report'

class Invoice < Report
  attr_reader :amount, :due_date, :invoicee


  include Employee

  def initialize(args = {})
    @amount = args.fetch(:amount)
    @due_date = args.fetch(:due_date) { Time.now.strftime("%m/%d/%Y") }
    @invoicee = args.fetch(:invoicee)
  end

end
