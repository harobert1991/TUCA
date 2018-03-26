class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.integer :prep_time
      t.integer :cooking_time
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
