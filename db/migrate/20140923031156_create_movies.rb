class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string 'title'
      t.text 'description'
      t.datetime 'release_date'
      t.text 'rating'
      t.timestamps
    end
  end
  def down
    drop_table 'movies'
  end

end
