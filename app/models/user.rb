class User < ApplicationRecord
    has_many :tasks
    has_secure_password :validations => false
    attr_accessor :password
end
