class AddDomainToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :domain, :string
  end
end
