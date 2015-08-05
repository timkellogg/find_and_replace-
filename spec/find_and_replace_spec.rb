require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('replaces certain letters with other designated letter') do
    expect('a'.find_and_replace('a', 'z')).to(eq('z'))
  end
end
