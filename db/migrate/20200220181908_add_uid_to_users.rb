class AddUidToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :uid, :integer
  end

  def down
    remove_column :users, :uid
  end
end
