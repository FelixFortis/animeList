class Show < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :total_episodes
  validates :name, :description, :image_url, :total_episodes, presence: true
  validates_uniqueness_of :name
end
