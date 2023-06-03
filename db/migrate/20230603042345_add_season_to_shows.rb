class AddSeasonToShows < ActiveRecord::Migration[6.1]
  def change
    create_table :add_season_to_shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
      t.string :season
    end
  end
end
