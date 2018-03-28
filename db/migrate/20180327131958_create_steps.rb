class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.integer :sequence
      t.string :photo
      t.text :description
      t.integer :step_time
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
