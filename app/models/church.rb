class Church < ActiveRecord::Base
  has_many :bible_studies, dependent: :destroy
  validates :name, presence: true,
  length: {minimum: 5}

  def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    all
  end
end

end
