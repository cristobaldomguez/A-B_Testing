class AddTitleToAbtests < ActiveRecord::Migration
  def change
    add_column :ab_tests, :title, :string
  end
end
