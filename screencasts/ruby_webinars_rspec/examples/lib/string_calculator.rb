class StringCalculator
  def self.add(input)
    return 0 if 0 == input.size

    input.split(",").map(&:to_i).inject(0) { |sum, number| sum + number }
  end
end