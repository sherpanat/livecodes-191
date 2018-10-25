def encrypt(sentence, combination = 3)
  # create array with alphabet
  alphabet = ("A".."Z").to_a

  # split sentence in letters
  letters = sentence.split("")

  # For each Letter
  encrypted_sentence = letters.map do |letter|

    # if letter is a space return letter
    if letter == " "
      letter
    else
      # Get letter's index
      alphabet_index = alphabet.index(letter)
      # Get and return letter from alphabet at index -3
      alphabet[alphabet_index - combination]
    end

    # with a ternary operator
    # (letter == " ") ? letter : alphabet[alphabet.index(letter) - 3]
  end

  # join letters
  encrypted_sentence.join
end

p encrypt("JAI FAIM LAISSEZ MOI PARTIR", 12)
