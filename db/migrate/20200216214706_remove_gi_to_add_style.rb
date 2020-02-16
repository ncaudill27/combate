class RemoveGiToAddStyle < ActiveRecord::Migration[6.0]
  def change
    add_column :divisions, :style, :string
    remove_column :divisions, :gi
  end
end
