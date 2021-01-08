class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.datetime :release_date
      t.integer :num_of_episodes
      t.string :genre

      t.timestamps null: false
    end
  end
end
