class BiggestWord
  class << self

    def find_biggest(input)
      return nil if input.nil? || 0 == input.size

      input.split(" ").max_by{|w| w.size }
    end

  end
end