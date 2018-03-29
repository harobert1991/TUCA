class AddRecipeToCarts < ActiveRecord::Migration[5.1]
  def change
    add_reference :carts, :recipe, foreign_key: true
  end
end
