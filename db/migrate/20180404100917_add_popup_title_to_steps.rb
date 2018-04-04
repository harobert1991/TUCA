 class AddPopupTitleToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :popup_title, :string
  end
end
