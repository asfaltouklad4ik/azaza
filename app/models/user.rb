class User < ActiveRecord::Base
	#before_create :create_role
	#ROLES = %w[admin user]
  #def role?(base_role)
  #ROLES.index(base_role.to_s) <= ROLES.index(role)
  #end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         validates :password, confirmation: true
    #private
     # def create_role
     #   self.roles << Role.find_by_name(:user)
      #end
      has_many :events, foreign_key: :category_id
      has_many :tasks, foreign_key: :user_id
end
