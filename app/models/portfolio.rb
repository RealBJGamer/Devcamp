class Portfolio < ApplicationRecord
  has_many :technologies
  
  validates_presence_of :title , :body , :main_image , :thumb_image, :main_image

  def self.angular
    where(subtitle: 'Angular')
  end
  
  scope :ruby_on_rails_porfolio_items, -> { where(subtitle: 'Ruby on Rails') }
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '400', width: '600')
    self.thumb_image ||= Placeholder.image_generator(height: '200', width: '350')
  end
end
