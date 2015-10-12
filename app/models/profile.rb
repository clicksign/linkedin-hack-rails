class Profile < ActiveRecord::Base
  validates :linkedin_id, uniqueness: true
  belongs_to :campaings

  def self.search(campaign_id, search)
    if search
      where(campaign_id: campaign_id).where(
        ['name LIKE ?
         OR title LIKE ?
         OR company LIKE ?
         OR email LIKE ?',
         "%#{search}%",
         "%#{search}%",
         "%#{search}%",
         "%#{search}%"]
      ).order("company, lower(name)")
    else
      where(campaign_id: campaign_id).all.order("company, lower(name)")
    end
  end
end
