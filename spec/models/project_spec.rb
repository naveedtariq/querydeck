require 'spec_helper'

describe Project do
  it { should be_mongoid_document }
  it { should be_timestamped_document }
  
  it { should have_many :contacts }
  it { should have_many :messages }
end
