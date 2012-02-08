class CreateObservances < ActiveRecord::Migration
  def change
    create_table :observances do |t|
      t.references :event
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
    add_index :observances, :event_id
  end
end
