class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.string :release_year
      t.string :episode_count
      t.string :genre
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
