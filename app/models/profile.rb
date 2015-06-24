class Profile < ActiveRecord::Base
  validates :linkedin_id, uniqueness: true
end
