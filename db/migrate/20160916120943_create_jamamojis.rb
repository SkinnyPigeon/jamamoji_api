class CreateJamamojis < ActiveRecord::Migration
  def change
    create_table :jamamojis do |t|
      t.string :name
      t.string :icon
      t.integer :food
      t.integer :energy
      t.integer :waste
      t.boolean :alive
      t.boolean :ill
      t.boolean :happy
      t.boolean :hungry
      t.integer :damage
      t.integer :health
      t.integer :special
      t.integer :opponent_bonus
      t.integer :block
      t.integer :opponent_special

      t.timestamps null: false
    end
  end
end
