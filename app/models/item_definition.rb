class ItemDefinition < ActiveRecord::Base
  has_one :graphic, :as => :graphicable
  belongs_to :action_definition
  
  accepts_nested_attributes_for :graphic
end
