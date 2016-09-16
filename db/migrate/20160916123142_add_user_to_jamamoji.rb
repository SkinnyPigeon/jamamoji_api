class AddUserToJamamoji < ActiveRecord::Migration
  def change
    add_reference :jamamojis, :user, index: true, foreign_key: true
  end
end
