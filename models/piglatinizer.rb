class PigLatinizer

    def piglatinize(input)
    input.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end
    
    private
    
    def piglatinize_word(word)
        if word[0].match(/[aAeEiIoOuU]/)
          word + "way"
        else
          vowel_index = word.index(/[aAeEiIoOuU]/)
          consonants = word.slice(0..vowel_index-1)
          word_leftover = word.slice(vowel_index..word.length)
          word_leftover + consonants + "ay"
        end
    end

end
