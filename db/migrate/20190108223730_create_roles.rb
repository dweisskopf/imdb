class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.string :charactername

      t.timestamps
    end
  end
end
