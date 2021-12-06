require('rspec')
require('leetspeek')

describe('String#leetspeek') do
  it('returns a string as is when no leetspeek rules apply') do
    expect("crypt".leetspeek).to(eq("crypt"))
  end
end