class FeelingGraphic < ActiveRecord::Base
  has_one :graphic, :as => :graphicable
  belongs_to :creature_definition
  belongs_to :feeling_definition
end
