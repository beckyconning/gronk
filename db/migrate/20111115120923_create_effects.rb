class CreateEffects < ActiveRecord::Migration
  def self.up
    create_table :effects do |t|
      t.integer :feeling_definition_id
      t.integer :ammount
      t.references :effectable, :polymorphic => true
      t.timestamps
    end
  end

  def self.down
    drop_table :effects
  end
end
