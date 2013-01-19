class CreateWorkLogs < ActiveRecord::Migration
  def change
    create_table :work_logs do |t|
      t.integer :actor_id
      t.integer :work_id
      t.timestamp :work_time
      t.string :without
      t.string :time
      t.string :zone
      t.string :notes

      t.timestamps
    end
  end
end
