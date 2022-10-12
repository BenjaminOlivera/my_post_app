class User < ApplicationRecord
  validates :email, {uniqueqness: true}
end
