class Google < ActiveRecord::Base
  validates :couch_id, uniqueness: true
end
