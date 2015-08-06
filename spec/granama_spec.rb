require('granama')
require('rspec')

describe('String#anagram') do
  it('takes list of words as argument and determines if they are anagrams to target word object') do
    expect("cat".anagram("dog act list")).to(eq("act"))
  end
end
