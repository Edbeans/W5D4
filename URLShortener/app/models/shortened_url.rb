class ShortenedUrl < ApplicationRecord
    validates :long_url, :short_url, :user_id, presence: true, uniqueness: true 

    def self.random_code
        @short_url = long_url.urlsafe_base64
    end
    
end