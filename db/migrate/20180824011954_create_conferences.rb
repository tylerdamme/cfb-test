class CreateConferences < ActiveRecord::Migration[5.1]
  def change
    create_table :conferences do |t|
      t.string :conference_name

      t.timestamps
    end
  end
end
