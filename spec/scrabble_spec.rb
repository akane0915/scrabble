require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('take "a" and return a scrabble score of 1') do
    expect('a'.scrabble()).to(eq(1))
  end

  it('take "au" and return a scrabble score of 2') do
    expect('au'.scrabble()).to(eq(2))
  end

  it('take "dg" and return a scrabble score of 4') do
    expect('dg'.scrabble()).to(eq(4))
  end

  it('take "bc" and return a scrabble score of 6') do
    expect('bc'.scrabble()).to(eq(6))
  end

  it('take "fhv" and return a scrabble score of 12') do
    expect('fhv'.scrabble()).to(eq(12))
  end

  it('take "kfhv" and return a scrabble score of 17') do
    expect('kfhv'.scrabble()).to(eq(17))
  end

  it('take "jx" and return a scrabble score of 16') do
    expect('jx'.scrabble()).to(eq(16))
  end

  it('take "qz" and return a scrabble score of 20') do
    expect('qz'.scrabble()).to(eq(20))
  end
end
