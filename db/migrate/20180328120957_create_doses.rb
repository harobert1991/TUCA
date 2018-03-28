class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.string :ingredient
      t.integer :quantity
      t.string :unit
      t.references :step, foreign_key: true

      t.timestamps
    end
  end
end
