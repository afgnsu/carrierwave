class Blog < ActiveRecord::Base
  has_many :photos, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :title, :content, presence: true
end
