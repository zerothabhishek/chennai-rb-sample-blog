class User < ActiveRecord::Base
  has_many :posts
  has_many :comments


  def posts_with_my_comments
    Comment.where(user_id: self.id).map(&:post).uniq
  end

end
