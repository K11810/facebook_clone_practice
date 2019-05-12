class Picture < ApplicationRecord
    validates :title, presence: true
    validates :title, length: { in: 1..140 }
    validates :content, presence: true

    belongs_to :user

    mount_uploader :image, ImageUploader

end
