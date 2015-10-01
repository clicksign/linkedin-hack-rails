class Profile < ActiveRecord::Base
  validates :linkedin_id, uniqueness: true
  belongs_to :campaings
end
