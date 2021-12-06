require('rspec')
require('leetspeek')

describe('String#leetspeek') do
  it('returns a string as is when no leetspeek rules apply') do
    expect("crypt".leetspeek).to(eq("crypt"))
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
end