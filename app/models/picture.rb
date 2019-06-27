class Picture < ApplicationRecord
    validates :title, presence: true, length: { in: 1..140 }
    validates :content, presence: true, length: { in: 1..500 }
    validates :image, presence: true

    belongs_to :user

    mount_uploader :image, ImageUploader

end
