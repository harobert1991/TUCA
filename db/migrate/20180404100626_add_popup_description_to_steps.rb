class AddPopupDescriptionToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :popup_description, :string
  end
end
