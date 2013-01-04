class DreamDefinition < ActiveRecord::Base
  has_one :graphic, :as => :graphicable
end
