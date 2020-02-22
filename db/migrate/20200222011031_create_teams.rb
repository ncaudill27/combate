class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :affiliation
      t.string :location

      t.timestamps
    end
  end
end
