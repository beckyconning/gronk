class ActionDefinition < ActiveRecord::Base
  has_many :effects, :as => :effectable
  has_many :items
    
  ammount_and_feeling_definition_are_blank = proc { |attributes| attributes['ammount'].blank? and attributes['feeling_definition_id'].blank? }
  accepts_nested_attributes_for :effects, :reject_if => ammount_and_feeling_definition_are_blank, :allow_destroy => true


end
