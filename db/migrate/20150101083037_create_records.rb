class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :track_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
