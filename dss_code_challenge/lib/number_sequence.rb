class Sequence

  def sequence_of_numbers(n)
    if n == 1
      return [n]
    end
    if n.even?
      n = n/2
      return [n]
    end
    if n.odd? && n > 1
      n = (3*n) + 1
      return [n]
    end
  end

end
