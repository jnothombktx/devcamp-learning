class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  # This is a custom scope defined via a Class Method. Called as Portfolio.angular
  def self.angular
    where(subtitle: 'Angular')
  end

  # This is a custom scope defined via the scope keyword. Called as Portfolio.ruby_on_rails_portfolio_items
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

end
