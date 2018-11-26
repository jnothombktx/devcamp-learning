module PlaceholderConcern
  extend ActiveSupport::Concern

  # Class method (calls itself), call Placeholder.image_generator
  def self.image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end
end