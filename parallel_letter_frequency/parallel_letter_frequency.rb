# frozen_string_literal :true
require 'pry'
class ParallelLetterFrequency

  def self.count(texts)
    return {} if texts.empty?

    pattern = /\p{Letter}/
    texts.join.downcase.strip.scan(pattern).join.each_char.tally
  end
end