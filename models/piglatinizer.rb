class PigLatinizer

  def piglatinize word
    # word.scan(//)
    w = word.split ' '
    w.map do |word|
      if word.downcase.scan(/^[aeoui]+/).empty? == false
        word+"way"
      else
        w = word.scan(/^[^aeoui]+/).join ''
        word[0,w.size] = ''
        word + w + "ay"
      end
    end.join ' '

  end

end
