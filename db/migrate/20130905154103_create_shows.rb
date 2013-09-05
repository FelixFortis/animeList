class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.text :description
      t.integer :total_episodes
      t.string :image_url

      t.timestamps
    end
  end
end
