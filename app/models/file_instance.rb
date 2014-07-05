class FileInstance < ActiveRecord::Base
  has_many :file_methods
  acts_as_votable 
end
