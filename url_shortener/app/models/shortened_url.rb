class ShortenedUrl < ApplicationRecord
    validates :short_url, uniqueness: true
    validates :long_url, presence: true
    validates :users_id, presence: true

    belongs_to :user,
        foreign_key: :users_id,
        primary_key: :id,
        class_name: :User

    def self.random_code
        p SecureRandom.urlsafe_base64
    end

end
