class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :bench_press
      t.integer :deadlift
      t.integer :squat
      t.datetime :training_at

      t.timestamps
    end
  end
end
