class Effect < ActiveRecord::Base
  belongs_to :effectable, :polymorphic => :true
  belongs_to :feeling_definition
  
  validates_presence_of :feeling_definition, :message => "Effect definitions must have a feeling definition to effect."
  validates_presence_of :ammount, :message => "Effect definitions must have a ammount."
end
