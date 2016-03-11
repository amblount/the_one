require_relative 'sock_matcher'

class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { Array.new }
    @matcher = args.fetch(:matcher)
    @tool = SockMatcher.new
  end

   def supply_match_for(sock)
    # i need this to return nil in the case of no match -
    @socks.each do |this|
    if @matcher.match?(this, sock)
      @socks.delete(this)
      return this
    end
    end

    @socks.each do |this|
    if @matcher.match?(this, sock) == false
      return nil
    end
    end
   end


   def supply_random_pair_of_socks
    @socks.each do |sock1|
      @socks.each do |sock2|
        if @matcher.match?(sock1, sock2)
          @socks.delete(sock1)
          @socks.delete(sock2)

          return [sock1,sock2]
        end
      end
    end
    []
  end

end

# lol = SockDrawer.new

# p lol.supply_random_pair_of_socks

