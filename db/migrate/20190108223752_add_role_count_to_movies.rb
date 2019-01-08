class AddRoleCountToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :roles_count, :integer
  end
end
