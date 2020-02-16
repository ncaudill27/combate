class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :organization
      t.string :url
      t.datetime :date
      t.datetime :registration_open
      t.datetime :registration_close

      t.timestamps
    end
  end
end
