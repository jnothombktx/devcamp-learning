class Portfolio < ApplicationRecord
  include PlaceholderConcern
  validates_presence_of :title, :body, :main_image, :thumb_image

  # This is a custom scope defined via a Class Method. Called as Portfolio.angular
  def self.angular
    where(subtitle: 'Angular')
  end

  # This is a custom scope defined via the scope keyword. Called as Portfolio.ruby_on_rails_portfolio_items
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  # Implementing a Callback to set data defaults in model instead of migration
  after_initialize :set_defaults

  def set_defaults
    # We will set default values for images in Portfolio, to ensure there is always one.
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end

end
