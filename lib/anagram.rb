class Anagram

  attr_reader :word
  
  def initialize(word)
    @word = word
  end

  def match(words)
    matches = []
    words.map do |word|
      matches.push(word) if word.chars.sort == @word.chars.sort
    end
    matches
  end
end

# we want it to iterate over every word in the words array
# - then we want it to check if the word matches the word passed in on 
# initialization 

# if the word matches.. then we want to add it to the array