require 'spellchecker'

describe SpellChecker do
    
    it 'returns the word as it is if spelled correctly' do
        expect(subject.check('hello')).to eq 'hello'
    end

end