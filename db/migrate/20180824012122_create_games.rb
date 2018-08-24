class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :home_id
      t.integer :away_id
      t.integer :home_score
      t.integer :away_score
      t.string :home_result
      t.string :away_result

      t.timestamps
    end
  end
end
