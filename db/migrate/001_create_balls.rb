class CreateBalls < ActiveRecord::Migration
  def self.up
    create_table :balls do |t|
      t.integer :latitude
      t.integer :longitude
      t.integer :altitude

      t.timestamps
    end
  end

  def self.down
    drop_table :balls
  end
end
