##
# An implementation of eratosthenes' sieve
#
class EratosthenesSieve
  def initialize
    @primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]
    @max_checked = @primes.last + 1
  end

  def get_nth_prime(n : T)
    while @primes.size <= n
      compute_primes
    end

    @primes[n]
  end

  def get_primes(n : T)
    while @primes.size <= n
      compute_primes
    end

    @primes
  end

  private def compute_primes
    max_segment_size = 1e6.to_i
    max_cached_prime = @primes.last
    @max_checked = max_cached_prime + 1 if max_cached_prime > @max_checked

    segment_min = @max_checked
    segment_max = [segment_min + max_segment_size, max_cached_prime * 2].min
    root = Math.sqrt(segment_max).to_i

    int_segment = ((segment_min + 1) .. segment_max).step(2).to_a
    segment = Array(Int32 | Nil).new
    segment.concat int_segment

    (1..Int64::MAX).each do |sieving|
      prime = @primes[sieving]
      break if prime > root
      composite_index = (-(segment_min + 1 + prime) / 2) % prime
      while composite_index < segment.size
        segment[composite_index] = nil
        composite_index += prime
      end
    end

    @primes.concat(segment.compact)

    @max_checked = segment_max
  end
end
