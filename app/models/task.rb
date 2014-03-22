class Task < ActiveRecord::Base
  belongs_to :category
  has_many :assignments
  has_many :users, through: :assignments
end

