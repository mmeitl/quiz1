class Image < ActiveRecord::Base
    validates :urls, :presence => true
end
