class CreateUserIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :user_ingredients do |t|
      t.boolean :Found
      t.references :cart, foreign_key: true
      t.references :dose, foreign_key: true

      t.timestamps
    end
  end
end
