require_relative 'sock'

class SockMatcher
  def match?(sock, other_sock)
    return false if sock.equal? other_sock
    return false unless socks? [sock, other_sock]
    matching_attributes?(sock, other_sock)
  end

  private
  def socks?(potential_socks)
    potential_socks.all? { |potential_sock| potential_sock.kind_of? Sock }
  end

  def matching_attributes?(sock, other_sock)
    sock.brand == other_sock.brand && sock.style == other_sock.style && sock.color == other_sock.color
  end
end

# sock1 = Sock.new(brand: "Nike", style: "quarter", color: "red")

# sock2 = Sock.new(brand: "Nike", style: "quarter", color: "red")

# matcher = SockMatcher.new

# p matcher.match?(sock1, sock2)
