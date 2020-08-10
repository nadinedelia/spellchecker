require 'spellchecker'

describe SpellChecker do
    
    it 'checks if word is part of word bank and if so, returns it unchanged' do
        expect(subject.check('hello')).to eq 'hello'
    end

end