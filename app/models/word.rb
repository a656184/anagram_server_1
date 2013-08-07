

class Word < ActiveRecord::Base

  def ordered_letters(word)
  	word.split('').sort!
  end

  def self.collect_anagrams(word)
    Word.where(word_can: word.split('').sort.join(''))
  end

  def self.anagrams(word)
    anagrams_words = []
    Word.collect_anagrams(word).each do |words|
      anagrams_words << words.word
    end
    anagrams_words
  end
    

end


