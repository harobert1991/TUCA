class AddMultiplierToDoses < ActiveRecord::Migration[5.1]
  def change
    add_column :doses, :multiplier, :integer
  end
end
