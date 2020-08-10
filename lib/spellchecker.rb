
class SpellChecker

    
    attr_reader :dictionary


    def initialize
        @dictionary = ['hello', 'world', 'there', 'are', 'sun', 'is']
    end

    def check(string)

        if string.is_a? String
        words_array = string.split(' ')
        changed_array = words_array.map { |word|
        if dictionary.include?(word)
            word = word
        else
            word = "~#{word}~"
        end
    }
        return changed_array.join(' ')
else 
    return "not a string"
end
    end
    end