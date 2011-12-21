class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :owned_projects, class_name: 'Project', inverse_of: :owner
  
  def to_s
    email
  end
  
  def projects
    Project.any_of({owner_id: id}, {:'collaborators.user_id' => id})
  end
end
