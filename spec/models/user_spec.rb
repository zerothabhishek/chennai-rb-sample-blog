require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'posts_with_my_comments' do

    it "should give posts with my comments" do

      user = User.create(email: 'sample@example.org')

      post1 = Post.create(title: 'sample1', user_id: user.id)
      comment1 = Comment.create(body: 'comment1', user_id: user.id, post_id: post1.id)
      comment2 = Comment.create(body: 'comment2', user_id: user.id, post_id: post1.id)

      post2 = Post.create(title: 'sample2')
      comment4 = Comment.create(body: 'comment4', post_id: post2.id)
      comment5 = Comment.create(body: 'comment5', post_id: post2.id)

      expect(user.posts_with_my_comments).to eq([post1])      
    end
  end
end
