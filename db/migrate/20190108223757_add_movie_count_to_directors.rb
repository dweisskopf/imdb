class AddMovieCountToDirectors < ActiveRecord::Migration[5.1]
  def change
    add_column :directors, :movies_count, :integer
  end
end
