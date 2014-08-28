class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :number, :presence => true, numericality: {only_integer: true}
  validates_uniqueness_of :number
  validates :context, :presence => true

  scope :desc, order("lessons.number DESC")
end
