class CreateEventsDivisionsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :events, :divisions do |t|
      t.index :event_id
      t.index :division_id
    end
  end
end
