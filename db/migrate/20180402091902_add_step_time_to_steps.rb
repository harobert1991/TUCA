class AddStepTimeToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :step_time, :string
  end
end
