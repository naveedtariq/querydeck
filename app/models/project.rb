class Project
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :owner, class_name: 'User', inverse_of: :owned_projects
  
  has_many :contacts
  has_many :messages
  
  field :name, type: String
  validates :name, presence: true
  
  def to_s
    name
  end
end
