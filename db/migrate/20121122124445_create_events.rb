class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :shortname
      t.string :longname
      t.boolean :starts_sundown

      t.timestamps
    end
  end
end
