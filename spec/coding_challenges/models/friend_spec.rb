require 'spec_helper'

describe Friend do
  it { expect(subject).to respond_to(:first_name)}
  it { expect(subject).to respond_to(:first_name=)}
  it { expect(subject).to respond_to(:person_id)}
  it { expect(subject).to respond_to(:person_id=)}

end
