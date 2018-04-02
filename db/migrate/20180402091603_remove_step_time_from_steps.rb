class RemoveStepTimeFromSteps < ActiveRecord::Migration[5.1]
  def change
    remove_column :steps, :step_time, :integer
  end
end
