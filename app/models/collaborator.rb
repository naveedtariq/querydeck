class Collaborator
  include Mongoid::Document
  include Mongoid::Timestamps
  
  embedded_in :project
  belongs_to :user
end
