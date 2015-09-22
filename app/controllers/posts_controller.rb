class PostsController < ApplicationController

  def index
    render template: 'posts/index.html.erb', locals: { posts: Post.all }
  end

  def show

  end

  def new

  end

  def create

  end

  def update

  end

  def destroy

  end
end
