require('rspec')
require('leetspeek')

describe('String#leetspeek') do
  it('returns a string as is when no leetspeek rules apply') do
    expect("crypt".leetspeek).to(eq("crypt"))
  end

  it('returns every "e" in a string with a "3"') do
    expect("egg".leetspeek).to(eq("3gg"))
  end
end