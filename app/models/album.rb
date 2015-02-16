class Album < ActiveRecord::Base
  attr_accessible :name, :photos, :user
  has_many :photos
  belongs_to :user
  accepts_nested_attributes_for :photos, allow_destroy: true
end
