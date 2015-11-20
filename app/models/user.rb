class User < ActiveRecord::Base
  #validates that name is present and length is less than 50
  validates(:name, presence: true, length: {maximum: 50})
  #validates that email is present and length is less than 256
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, 
            presence:true, 
            length: {maximum: 255}, 
            format: { with: VALID_EMAIL_REGEX }, 
            uniqueness: {case_sensitive: false})
  
end
