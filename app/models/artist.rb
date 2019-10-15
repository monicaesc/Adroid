class Artist < ApplicationRecord
  belongs_to :museums, optional:true
  has_many :exhibitions
  paginates_per 50

  def self.search(search, page)
        if search
          Artist.where("name like ?", "%#{search}%").order("name ASC").page page
        else
          Artist.all.order("name ASC").page page
        end
    end
end

# class Artist < ApplicationRecord
#   has_many :exhibitions
#   has_many :museums, through: :exhibitions
#
#   def self.search(search)
#         if search
#           artists = Artist.where("name like ?", "%#{search}%").order("name ASC")
#         else
#             Artist.all.order("name ASC")
#         end
#     end
# end
