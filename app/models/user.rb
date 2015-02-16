class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :albums, :photos
  has_many :albums
  has_many :photos, through: :albums
  accepts_nested_attributes_for :albums, allow_destroy: true
  accepts_nested_attributes_for :photos, allow_destroy: true
end
