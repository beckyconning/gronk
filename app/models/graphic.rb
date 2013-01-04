class Graphic < ActiveRecord::Base
  has_attached_file :file
  
  belongs_to :graphicable, :polymorphic => :true
  
  def is_animation
    return true if frame_width
  end
  
end
