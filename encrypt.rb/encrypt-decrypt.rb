def encrypt(sentence, combination = 3)
  # create array with alphabet
  alphabet = ("A".."Z").to_a

  # add a ponctuation array
  ponctuations = [" ", ",", ".", "'", "!"]

  # split sentence in letters
  letters = sentence.split("")

  # For each Letter
  encrypted_sentence = letters.map do |letter|
    # if letter is a space return letter
    if ponctuations.include?(letter)
      letter
    else
      # Get letter's index
      alphabet_index = alphabet.index(letter)
      # Get and return letter from alphabet at index -3
      alphabet[(alphabet_index - combination) % 26]
    end

    # with a ternary operator
    # (letter == " ") ? letter : alphabet[(alphabet.index(letter) - combination) % 26]

  end

  # join letters
  encrypted_sentence.join
end

p encrypt("J'AI FAIM, LAISSEZ MOI PARTIR !", 12)
# results "XOW TOWA, ZOWGGSN ACW DOFHWF !"

def decrypt(sentence, combination)
  encrypt(sentence, combination)
end

p decrypt("X'OW TOWA, ZOWGGSN ACW DOFHWF !", - 12)
# results "JAI FAIM, LAISSEZ MOI PARTIR !"
