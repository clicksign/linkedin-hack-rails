class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title

      t.timestamps null: false
    end
    add_index :campaigns, :title, unique: true
  end
end
