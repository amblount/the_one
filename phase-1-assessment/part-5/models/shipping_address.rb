class ShippingAddress

  attr_reader :customer, :orders
  attr_accessor :street, :city, :state, :zip_code, :label

  def initialize(args = {})
    @street = args.fetch(:street)
    @city = args.fetch(:city)
    @state = args.fetch(:state)
    @zip_code = args.fetch(:zip_code)
    @label = args.fetch(:label) # home, work, etc
    @orders = []

    self.customer = args.fetch(:customer)
  end

  def customer=(customer)
    @customer = customer
    customer.add_shipping_address(self)
  end

  def add_order(order)
    orders << order
  end

end
