class Post < ActiveRecord::Base
    has_many :replies
end
