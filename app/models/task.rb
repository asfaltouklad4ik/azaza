class Task < ActiveRecord::Base
  belongs_to :category
  has_many :assignments
  has_many :users, through: :assignments
  validates :name, :textdescription, presence: true
  validates_length_of :textdescription,
    :minimum   => 10,
    :maximum   => 500,
    :too_short => "minimum is 10 symbols",
    :too_long  => "maximum is 500 symbols"
    scope :created, -> { where(created: true) }
end


