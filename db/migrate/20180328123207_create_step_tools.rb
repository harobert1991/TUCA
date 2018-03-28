class CreateStepTools < ActiveRecord::Migration[5.1]
  def change
    create_table :step_tools do |t|
      t.references :step, foreign_key: true
      t.references :tool, foreign_key: true

      t.timestamps
    end
  end
end
