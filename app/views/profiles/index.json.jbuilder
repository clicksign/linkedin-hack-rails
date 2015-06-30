json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :first_name, :last_name, :company, :title, :address_full, :address_city, :address_country, :image, :linkedin_id, :linkedin_url, :linkedin_company_id, :website, :domain, :gender, :company_gender, :source, :vertical, :email, :campaign_id
  json.url profile_url(profile, format: :json)
end
