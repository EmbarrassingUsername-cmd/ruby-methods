# frozen_string_literal: true

def substrings(string, dictionary)
  string.downcase.split.each_with_object(Hash.new(0)) do |word_to_test, result_hash|
    dictionary.each { |word_to_include| result_hash[word_to_include] += 1 if word_to_test.include?(word_to_include) }
    # creates an array of words from the downcased string then using that
    # creates Hash with default value of zero as the accumulator checks for each word in dictonary in each
    # word in string and increments hash value at the key of each dictionary word by 1 if included
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
