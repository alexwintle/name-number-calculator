class Name

  attr_accessor :name, :name_char_array, :total, :name_array

  def get_name
    @name = gets.chomp!
  end

  def name_to_char
    @name_char_array = @name.upcase.chars
  end

  def name_to_number
    @name_array = []
    count = 0

    @name_char_array.each { |char|
      if name_number_hash.has_key?(char)
        @name_array.push(name_number_hash[char])
        count += 1
      end
    }
    @total = @name_array.sum

  end

  def name_number_hash
    {
      "A" => 1,
      "B" => 2,
      "C" => 3,
      "D" => 4,
      "E" => 5,
      "F" => 6,
      "G" => 7,
      "H" => 8,
      "I" => 9,
      "J" => 10,
      "K" => 11,
      "L" => 12,
      "M" => 13,
      "N" => 14,
      "O" => 15,
      "P" => 16,
      "Q" => 17,
      "R" => 18,
      "S" => 19,
      "T" => 20,
      "U" => 21,
      "V" => 22,
      "W" => 23,
      "X" => 24,
      "Y" => 25,
      "Z" => 26,
    }
  end

end