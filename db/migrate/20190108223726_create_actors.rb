class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :bio
      t.string :dob

      t.timestamps
    end
  end
end
