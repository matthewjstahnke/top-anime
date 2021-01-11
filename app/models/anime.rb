class Anime < ActiveRecord::Base
    belongs_to :user

    validates :title, presence: true, uniqueness: true
    validates :release_year, presence: true 
    validates :episode_count, presence: true 
    validates :genre, presence: true 

end