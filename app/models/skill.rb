class Skill < ApplicationRecord
  include PlaceholderConcern
  validates_presence_of :title, :percent_utilized # In-model validation

  # Here we implement a concern for containing an image (thumbnail or icon)
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end

end
