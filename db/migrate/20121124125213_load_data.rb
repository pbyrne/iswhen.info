class LoadData < ActiveRecord::Migration
  def up
    Rails.application.load_seed
  end

  def down
  end
end
