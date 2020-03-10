class RenameTrainingAtStartTimeToResults < ActiveRecord::Migration[5.2]
  def change
    rename_column :results, :training_at, :start_time
  end
end
