class User < ActiveRecord::Base
	before_create :create_role
	has_many :users_roles
    has_many :roles, :through => :users_roles
	has_many :tasks, through: :assignments, foreign_key: :user_id
	
	#ROLES = %w[admin user]
  #def role?(base_role)
  #ROLES.index(base_role.to_s) <= ROLES.index(role)
  #end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         validates :password, confirmation: true
    private
      def create_role
      	self.roles << Role.find_by_name(:user)
      end
end
