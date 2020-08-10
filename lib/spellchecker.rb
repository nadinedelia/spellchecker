
class SpellChecker

    
    attr_reader :dictionary


    def initialize
        @dictionary = ['hello', 'world', 'there', 'are', 'sun']
    end

    def check(string)

        words_array = string.split(' ')

        changed_array = words_array.map do |word|
        if dictionary.include?(word)
            return word
        else
            return "~#{word}~"
        end
    end
    return changed_array.join(' ')
    end


end