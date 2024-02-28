class User < ApplicationRecord
    has_many :todo_lists
    
    has_secure_password 

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :email, presence: true,
    
                   uniqueness: { case_sensitive: false },
    
                   length: { maximum: 100 },
    
                   format: { with: VALID_EMAIL_REGEX }
end