class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :tournament_id
      t.integer :user_id
      t.boolean :registration_status, default: false, null: false

      t.timestamps
    end
  end
end
