class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true

    has_many :shortened_urls,
        foreign_key: :users_id,
        primary_key: :id,
        class_name: :ShortenedUrl
    
end
