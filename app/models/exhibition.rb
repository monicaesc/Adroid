class Exhibition < ApplicationRecord
  belongs_to :artist
  belongs_to :museum
  # has_many :artists
end


# class Exhibition < ApplicationRecord
#   belongs_to :artist
#   belongs_to :museum
# end
