class Photo < ActiveRecord::Base
  attr_accessible :name, :album, :user
  belongs_to :album
end
