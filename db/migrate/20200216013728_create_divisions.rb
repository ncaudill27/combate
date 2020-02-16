class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :weight_class
      t.boolean :gi, default: true, null: false
      t.string :skill

      t.timestamps
    end
  end
end
