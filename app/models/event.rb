class Event < ActiveRecord::Base
  belongs_to :category, class_name: Category
  has_many   :tasks

  validates :name, length: { in: 4..30 }
  #validates :category, presence: true

  accepts_nested_attributes_for :tasks, allow_destroy: true

end
