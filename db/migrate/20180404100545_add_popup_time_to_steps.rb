class AddPopupTimeToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :popup_time, :string
  end
end
