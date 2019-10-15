class Museum < ApplicationRecord
  has_many :artists
end


# class Museum < ApplicationRecord
#   has_many :exhibitions
#   has_many :artists, through: :exhibitions
# end
