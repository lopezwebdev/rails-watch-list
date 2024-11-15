class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence:true, uniqueness: true

   has_many :lists, through: :bookmarks

   validates :name, presence:true, uniqueness: true
  #  validates :overview, presence:true
end
