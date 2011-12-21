require 'spec_helper'

describe User do
  it { should be_mongoid_document }
  it { should be_timestamped_document }
end
