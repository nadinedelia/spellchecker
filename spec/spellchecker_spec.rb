require 'spellchecker'

describe SpellChecker do


    context 'string is returned unchanged' do
        
    it 'checks if word is part of word bank and if so, returns it unchanged' do
        expect(subject.check('hello')).to eq 'hello'
    end

    it 'returns a string consisting of more than 1 word correctly if spelled right' do
        expect(subject.check('hello world')).to eq 'hello world'
    end

    it 'returns a changed string consisting of more than 1 word correctly if spelled wrong' do
        expect(subject.check('hello world there is sun')).to eq 'hello world there is sun'
    end

end


    context 'string is returned changed' do
    it 'checks if word is not part of word bank and if so, returns it changed' do
        expect(subject.check('hlleo')).to eq '~hlleo~'
    end

    it 'returns a changed string consisting of more than 1 word correctly if spelled wrong' do
        expect(subject.check('hlleo world')).to eq '~hlleo~ world'
    end


    it 'returns a changed string consisting of more than 1 word correctly if spelled wrong' do
        expect(subject.check('hello world thre is sun')).to eq 'hello world ~thre~ is sun'
    end

    end

    context 'edge cases' do
        it 'throws and error if not a string' do
            expect(subject.check(2)).to eq 'not a string' 
        end
    end

end