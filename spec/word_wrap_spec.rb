require 'spec_helper'

class WordWrapper

  def wrap(string, width)
    string_length = string.length if string
    return '' if string.nil?
    if string_length <= width
      string
    else
      last_space = string.rindex(' ', width)
      last_space = width if last_space.nil?
      string.slice(0, last_space) + "\n" + wrap(string[last_space, string_length].lstrip, width)
    end
  end

end

#make it work, make it right, make it fast
describe WordWrapper do
  it { expect(subject.wrap(nil, 1)).to eql('') }
  it { expect(subject.wrap('', 1)).to eql('') }
  it { expect(subject.wrap('x', 1)).to eql('x') }
  it { expect(subject.wrap('xx', 1)).to eql("x\nx") }
  it { expect(subject.wrap('xxx', 1)).to eql("x\nx\nx") }
  it { expect(subject.wrap('x x', 1)).to eql("x\nx") }
  it { expect(subject.wrap('x xx', 3)).to eql("x\nxx") }
  it { expect(subject.wrap('Four score and', 7)).to eql("Four\nscore\nand") }
  it {
    expect(
        subject.wrap('Four score and seven years ago our fathers brought forth upon this continent', 7)
    ).to eql(
             "Four\nscore\nand\nseven\nyears\nago our\nfathers\nbrought\nforth\nupon\nthis\ncontine\nnt"
         )
  }
end