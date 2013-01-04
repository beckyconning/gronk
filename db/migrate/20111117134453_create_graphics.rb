class CreateGraphics < ActiveRecord::Migration
  def self.up
    create_table :graphics do |t|
      t.integer :frame_width
      t.references :graphicable, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :graphics
  end
end
