class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :conference_id
      t.integer :division_id

      t.timestamps
    end
  end
end
