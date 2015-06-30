class AddCampaingRefToProfiles < ActiveRecord::Migration
  def change
    add_reference :profiles, :campaing, index: true, foreign_key: true
  end
end
