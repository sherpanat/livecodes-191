def acronym(sentence)
  #transform sentence in array
  words = sentence.split(" ")
  #split the sentence in words
  first_letters = words.map do |word|
    word[0].upcase
  end
  #find the first letter
  #capitalize words
  first_letters.join

end
p acronym("What the Fuck")
