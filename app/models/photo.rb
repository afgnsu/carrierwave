class Photo < ActiveRecord::Base
  belongs_to :blog
  validates :filename, presence: true
end
