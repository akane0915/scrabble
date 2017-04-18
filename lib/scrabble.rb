class String
  define_method(:scrabble) do
    value_one = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    value_two = ["d", "g"]
    value_three = ["b", "c", "m", "p"]
    value_four = ["f", "h", "v", "w", "y"]
    all_values = [value_one, value_two, value_three, value_four]
    scrabble_scores = Hash.new()
    scrabble_scores = {value_one => 1, value_two => 2, value_three => 3}
    letters = self.downcase().split("")

    total_score = 0
    letters.each() do |letter|
      all_values.each_with_index() do |array,index|
        if array.include?(letter)
          total_score += scrabble_scores.fetch(all_values[index])
        end
      end
    end
    total_score
  end
end
