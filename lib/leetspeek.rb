require('pry')

String.prepend(Module.new do
  def leetspeek
    split_array = self.split('')
    output_array = []
    split_array.each do |letter|
      if letter.upcase.eql?('E')
        output_array.push('3')
      else
        output_array.push(letter)
      end
    end
    output_array.join
  end
end)