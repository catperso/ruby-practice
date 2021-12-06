require('pry')

String.prepend(Module.new do
  def leetspeek
    split_array = self.split('')
    output_array = []
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
      else
        output_array.push(letter)
      end
    end
    output_array.join
  end
end)