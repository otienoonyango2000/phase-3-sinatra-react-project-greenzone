class CreateReviewTable < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :year
      t.string :comment
      t.integer :movie_id

      t.timestamps
    end
  end
end
