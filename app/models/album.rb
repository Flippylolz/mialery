class Album < ApplicationRecord
  belongs_to :user

  has_many :photos
  accepts_nested_attributes_for :photos, allow_destroy: true

  validates_uniqueness_of :name
end
