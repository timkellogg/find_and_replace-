require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('replaces certain letters with other designated letter') do
    expect('a'.find_and_replace('a', 'z')).to(eq('z'))
  end

  it('replaces words with other words') do
    expect('the end of time.'.find_and_replace('the', 'THE')).to(eq('THE end of time.'))
  end
end
