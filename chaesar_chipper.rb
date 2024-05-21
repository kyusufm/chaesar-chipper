ALPHABET = ('a'..'z').to_a
ALPHABET_UPPER = ('A'..'Z').to_a

def caesar_chipper(text, shift)
    # convert text to character,and map it out
    # for each char, do shift_char function, with text and shift
    # then jo in the char back to text

    text.chars.map { |char| shift_char(char, shift)}.join
end

def shift_char(char, shift)
    #if char is include in alphabet
    if ALPHABET.include?(char)
        #get index of char in alphabet
        index = ALPHABET.index(char)
        #get shifted index
        ss = (index+shift)%26

        ALPHABET[ss]

    elsif ALPHABET_UPPER.include?(char)
        index = ALPHABET_UPPER.index(char)
        shifted_index = index + shift
        #shifted char
        ss = (shifted_index)%26
        ALPHABET_UPPER[ss]
    
    else
        char
    
    end
end

puts caesar_chipper("THE quick brown FOX jump over a lazy dog",7)