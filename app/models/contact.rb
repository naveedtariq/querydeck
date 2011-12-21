class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :project
end
