class AddLevelToJamamojis < ActiveRecord::Migration
  def change
    add_column :jamamojis, :level, :integer
  end
end
