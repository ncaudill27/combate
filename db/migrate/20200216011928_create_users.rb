class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :gi_skill
      t.string :nogi_skill
      t.integer :weight

      t.timestamps
    end
  end
end
