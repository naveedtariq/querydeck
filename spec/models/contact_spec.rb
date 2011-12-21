require 'spec_helper'

describe Contact do
  it { should be_mongoid_document }
  it { should be_timestamped_document }
  
  it { should belong_to :project }
end
