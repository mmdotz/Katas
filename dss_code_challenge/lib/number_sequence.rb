class Sequence

  def sequence_of_numbers(n)
    if n == 1
      return [n]
    end
    sequence = [n]

    until n == 1 do
      if n.odd? && n > 1
        n = (3*n) + 1
      else
        n = n/2
      end
      sequence << n
      n = sequence.last
    end
    sequence
  end
end
