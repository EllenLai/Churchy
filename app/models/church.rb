class Church < ActiveRecord::Base
  has_many :bible_studies, dependent: :destroy
  validates :name, presence: true,
  length: {minimum: 5}
end
