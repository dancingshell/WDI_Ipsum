class Word < ActiveRecord::Base

  def paragraph(num)
    #words = Words.all
    i = 0
    word_sentense_count = 0
    paragraph = []
    num.times { paragraph << [] }
    while i > num
      words.shuffle.each do |word|
        while paragraph[i].count < rand(1..20) + 50
          paragraph[i] << word
          word_sentense_count += 1
          if word_sentense_count == rand(7..13)
            paragraph[i] << "."
          end
        end
        if paragraph[i][-1] != "."
          paragraph[i] << "."
        end
      end
      i += 1
    end
    print(paragraph)
  end

  def print(paragraphs)
  end
end
