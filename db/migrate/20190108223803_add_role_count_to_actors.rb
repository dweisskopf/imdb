class AddRoleCountToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :roles_count, :integer
  end
end
