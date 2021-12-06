String.prepend(Module.new do
  def leetspeek
    split_array = self.split('')
    output_array = []
    counter = 0
    split_array.each do |letter|
      if letter.upcase.eql?('E')
        output_array.push('3')
      elsif letter.upcase.eql?('A')
        output_array.push('4')
      elsif letter.upcase.eql?('L')
        output_array.push('1')
      elsif letter.upcase.eql?('O')
        output_array.push('0')
      elsif letter.upcase.eql?('T')
        output_array.push('7')
      elsif letter.upcase.eql?('S') && !counter.eql?(0)
        output_array.push('z')
      else
        output_array.push(letter)
      end
      counter += 1
      if letter.eql?(' ')
        counter = 0
      end
    end
    output_array.join
  end
end)