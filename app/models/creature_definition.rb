class CreatureDefinition < ActiveRecord::Base
  has_one :graphic, :as => :graphicable
  has_many :feeling_graphics
  
  accepts_nested_attributes_for :graphic
end
