def ping_pong(target_number)
  output_array = []
  x = 0
  while (x < target_number)
    x += 1
    if x.%(15).eql?(0)
      output_array.push('ping-pong')
    elsif x.%(5).eql?(0)
      output_array.push('pong')
    elsif x.%(3).eql?(0)
      output_array.push('ping')
    else
      output_array.push(x)
    end
  end
  output_array
end