class AddCompanyidToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :linkedin_company_id, :integer
  end
end
