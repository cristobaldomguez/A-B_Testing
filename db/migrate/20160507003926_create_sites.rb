class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :domain
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :sites, :domain, unique: true
  end
end
