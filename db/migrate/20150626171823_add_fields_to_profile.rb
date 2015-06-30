class AddFieldsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :gender, :string
    add_column :profiles, :company_gender, :string
    add_column :profiles, :source, :string
    add_column :profiles, :vertical, :string
  end
end
