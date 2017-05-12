class Movie < ApplicationRecord

validates :director_id, :title, presence: true

validates :title, uniqueness: { scope: :year}

 validates :year, :duration, numericality: { only_integer: true }
 validates :year, numericality: { greater_than_or_equal_to: 1870 }
  validates :year, numericality: { less_than_or_equal_to: 2050 }

  validates :duration, numericality: { greater_than_or_equal_to: 0 }
   validates :duration, numericality: { less_than_or_equal_to: 2764800 }

belongs_to :director, :class_name => "Director", :foreign_key => "director_id"

has_many :characters
has_many :actors, :through => :characters

end
