class FileMethod < ActiveRecord::Base
  belongs_to :file_instance
  acts_as_votable 
end
