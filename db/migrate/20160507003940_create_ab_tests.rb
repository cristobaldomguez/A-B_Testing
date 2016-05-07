class CreateAbTests < ActiveRecord::Migration
  def change
    create_table :ab_tests do |t|
      t.boolean :state
      t.string :metrics
      t.text :input_a
      t.text :input_b
      t.integer :score_a
      t.integer :score_b
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
