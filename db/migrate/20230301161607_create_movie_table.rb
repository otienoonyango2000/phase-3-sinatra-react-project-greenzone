class CreateMovieTable < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :runtime
      t.string :director
      t.string :actors
      t.string :plot
      t.string :posterUrl

      t.timestamps
    end
  end
end
