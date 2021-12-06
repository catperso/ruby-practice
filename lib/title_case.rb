require('pry')

def title_case(sentence)
  split_sentence = sentence.split()
  split_sentence.each() do |word|
    word.capitalize!()
  end
  split_sentence.join(" ")
end