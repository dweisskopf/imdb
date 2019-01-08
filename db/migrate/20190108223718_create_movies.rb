class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :year
      t.integer :director_id

      t.timestamps
    end
  end
end
