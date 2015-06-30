class FixCampaingName < ActiveRecord::Migration
  def change
    rename_column :profiles,:campaing_id, :campaign_id
  end
end
