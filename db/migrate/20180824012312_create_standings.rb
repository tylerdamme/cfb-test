class CreateStandings < ActiveRecord::Migration[5.1]
  def change
    create_table :standings do |t|
      t.integer :conference_id
      t.integer :division_id
      t.integer :team_id
      t.integer :wins
      t.integer :losses
      t.integer :conference_wins
      t.integer :conference_losses
      t.integer :division_wins
      t.integer :division_losses

      t.timestamps
    end
  end
end
