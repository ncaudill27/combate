class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :weight_class
      t.string :skill
      t.boolean :gi, null: :false, default: :true

      t.timestamps
    end
  end
end
