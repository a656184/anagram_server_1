f = File.new('words')
f.each { |line| Word.create(word: line.downcase.chomp, word_can: line.downcase.chomp.split('').sort!.join('')) }