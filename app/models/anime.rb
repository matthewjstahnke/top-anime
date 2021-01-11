class Anime < ActiveRecord::Base
    belongs_to :user

    validates :title, presence: true, uniqueness: true
    validates :release_date, presence: true 
    validates :num_of_episodes, presence: true 
    validates :genre, presence: true 

end