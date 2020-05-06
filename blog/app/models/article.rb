class Article < ApplicationRecord
    acts_as_votable
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10 }
    
    def self.search(search)
        where("title LIKE ? OR text LIKE ?", "%#{search}%", "%#{search}%") 
    end
end
