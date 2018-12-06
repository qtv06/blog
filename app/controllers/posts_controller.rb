class PostsController < ApplicationController
  before_action :load_posts

  def index
    render json: {posts: @posts, status: 200}
    binding.pry
  end

  private

  def load_posts
    @posts = PostSerializer.new(Post.all).serializable_hash
  end
end
