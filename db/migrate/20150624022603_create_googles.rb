class CreateGoogles < ActiveRecord::Migration
  def change
    create_table :googles do |t|
      t.string :couch_id
      t.string :query
      t.string :title
      t.string :link
      t.string :description

      t.timestamps null: false
    end
  end
end
