class User < ActiveRecord::Base
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :assignments
  has_many :tasks, through: :assignments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
=======
>>>>>>> 1f1db5b1b82a0d0e1ce7051a99a4b8e350be6cd8
end
