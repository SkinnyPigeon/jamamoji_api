class AddHappyCountToJamamojis < ActiveRecord::Migration
  def change
    add_column :jamamojis, :happy_count, :integer
  end
end
