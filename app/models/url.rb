class Url < ApplicationRecord
  validates :long_url, presence: true
  validates :long_url, uniqueness: true

    before_create :shorten
    # before_create :counter

  def shorten
    allchars = Array('A'..'Z') + Array('a'..'z') + Array(1..9)
    extension = Array.new(8) { allchars.sample }.join
    self.short_url = extension

  end
  #
  # def counter
  #   self.click_count = 0
  # end

end
