class CreateComputers < ActiveRecord::Migration
  def change
     unless table_exists? :computers
    create_table :computers do |t|
      t.string :name
      t.text :used_for
      t.text :used_at
      t.integer :cash
      t.string :url

      t.timestamps null: false
    end
  end
end
