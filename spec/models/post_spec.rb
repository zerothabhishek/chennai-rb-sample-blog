require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#word_count' do

    xit "should be 11 for empty body and title: Hello World" do
      post = Post.new(title: 'Hello World')
      expect(post.word_count).to eq(11)
    end

    xit "should be 110 for title size 10 and body sized 100" do
      str10 = 'z'*10
      str100 = 'z'*100
      post = Post.new(title: str10, body: str100)
      expect(post.word_count).to eq(110)
    end

  end

  describe '#age' do
    # These tests can fail on certain datess

    xit "should be '2 year' for a post created two years ago" do
      post = Post.new(created_at: 2.years.ago)
      expect(post.age).to eq('2 year')
    end

    xit "should be '3 month' for a post created three months ago, same year" do
      post = Post.new(created_at: 3.months.ago)
      expect(post.age).to eq('3 month')
    end

    xit "should be '5 day' for a post created in the same month, five day ago" do
      post = Post.new(created_at: 5.days.ago)
      expect(post.age).to eq('5 day')
    end

    xit "should be '0 day' for a post created today" do
      post = Post.new(created_at: DateTime.now)
      expect(post.age).to eq('0 day')
    end


  end
end
