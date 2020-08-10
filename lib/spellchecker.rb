
class SpellChecker

    
    def initialize
        @dictionary = ['hello']
    end

    def check(string)
        if @dictionary.include?(string)
            return string
        else
            return "~#{string}~"
        end
    end


end