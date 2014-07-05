class FileUpdate < ActiveRecord::Base
  has_one :user
  acts_as_votable 
end
