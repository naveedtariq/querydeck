require 'spec_helper'

describe Admin do
  it { should be_mongoid_document }
  it { should be_timestamped_document }
end
