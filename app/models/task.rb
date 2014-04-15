class Task < ActiveRecord::Base
  belongs_to :user_id, class_name: User
  belongs_to :event
  validates :name, :description, presence: true
  validates_length_of :description,
    :minimum   => 5,
    :maximum   => 50000,
    :too_short => "minimum is 10 symbols",
    :too_long  => "maximum is 500 symbols"
end


