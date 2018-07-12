class Post < ActiveRecord::Base
    belongs_to :user
    has_many :replies
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    
    validates :title, presence: true
    paginates_per 5 
end
