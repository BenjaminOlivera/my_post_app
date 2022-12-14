class User < ApplicationRecord
  has_secure_password
  validates :email, { uniqueness: true }
  validates :password, { presence: true }


  def posts
    return Post.where(user_id: self.id)
  end
end
