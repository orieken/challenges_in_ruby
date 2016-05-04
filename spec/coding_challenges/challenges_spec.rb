require 'spec_helper'

describe Challenges do
  before(:all) do
    get '/'
  end

  it { expect(last_response).to be_ok}
end