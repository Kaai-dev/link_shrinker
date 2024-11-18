class Link < ApplicationRecord
  before_create :generate_shortened_url

  validates :input_url, presence: true, url: true

  private

  def generate_shortened_url
    self.shrinked_url = loop do
      code = SecureRandom.alphanumeric(8).downcase
      break code unless Link.exists?(shrinked_url: code)
    end
  end
end
