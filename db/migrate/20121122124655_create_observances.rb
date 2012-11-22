class CreateObservances < ActiveRecord::Migration
  def change
    create_table :observances do |t|
      t.references :event
      t.date :start_on
      t.date :end_on

      t.timestamps
    end

    add_index :observances, :event_id
  end
end
