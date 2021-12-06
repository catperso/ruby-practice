require('rspec')
require('leetspeek')

describe('String#leetspeek') do
  it('returns a string as is when no leetspeek rules apply') do
    expect("cry".leetspeek).to(eq("cry"))
  end

  it('returns every "e" in a string with a "3"') do
    expect("egg".leetspeek).to(eq("3gg"))
  end

  it('returns every "a" in a string with a "4"') do
    expect("read".leetspeek).to(eq("r34d"))
  end

  it('returns every "L" or "l" in a string with a "1"') do
    expect("Llama".leetspeek).to(eq("114m4"))
  end

  it('returns every "o" in a string with a "0"') do
    expect("Orange".leetspeek).to(eq("0r4ng3"))
  end

  it('returns every "t" in a string with a "7"') do
    expect("tomato".leetspeek).to(eq("70m470"))
  end

  it('returns every "s" in a string with a "z"') do
    expect("message".leetspeek).to(eq("m3zz4g3"))
  end

  it('does NOT replace "s" with "z" if its the first letter of a word') do
    expect("sensual".leetspeek).to(eq("s3nzu41"))
  end

  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream.".leetspeek).to(eq("I scr34m y0u scr34m w3 411 scr34m f0r r4zpb3rry ic3 cr34m."))
  end
end