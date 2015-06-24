class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :title
      t.string :address_full
      t.string :address_city
      t.string :address_country
      t.string :image
      t.string :linkedin_id
      t.string :linkedin_url

      t.timestamps null: false
    end
  end
end
