class RemoveMultiplierFromDoses < ActiveRecord::Migration[5.1]
  def change
    remove_column :doses, :multiplier, :integer
  end
end
