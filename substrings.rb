def substrings(phrase, dictionary)

  substring_hash = Hash.new
  substring_hash.default = 0

  phrase.downcase.gsub!(/[^a-z\s]/i, '')
  phrase = phrase.split(' ')

  phrase.each do |word|
    dictionary.each do |list|
      if word.include? list
        substring_hash[list] += 1
      end
    end
  end
  substring_hash = Hash[ substring_hash.sort_by { |key, val| key } ]
end