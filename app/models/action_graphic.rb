class ActionGraphic < ActiveRecord::Base
  has_one :graphic, :as => :graphicable
  belongs_to :action_definition
  belongs_to :creature_definition
  
end
