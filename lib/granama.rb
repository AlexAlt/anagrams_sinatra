class String
  define_method(:anagram) do |word_list|
    target_split = self.split("")
    target_split_sort = target_split.sort()

    result_array = []

    word_list_array = word_list.split(" ")

    word_list_array.each() do |word|
      split_word = word.split("")
      word_length = split_word.length()
      if word_length == target_split.length() && split_word.sort() == target_split_sort
          new_word = split_word.join('')
          result_array.push(new_word)
      end
    end

    final_string = result_array.join(" ")

    return final_string

  end
end
