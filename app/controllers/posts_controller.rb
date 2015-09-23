class PostsController < ApplicationController

  def index
    render template: 'posts/index.html.erb', locals: { posts: Post.all }
  end

  def show
    render template: 'posts/show.html.erb', locals: { post: Post.find(params[:id]), comments: Comment.where(post_id: params[:id])}
  end

  def new
    render template: 'posts/new.html.erb', locals: { post: Post.new }
  end

  def create
    post = Post.new
    post.title = params.fetch(:post).fetch(:title)
    post.body = params.fetch(:post).fetch(:body)
    post.published = false
    if post.save
      redirect_to post_path(post)
    else
      redirect_to posts_path
    end
  end

  def update

  end

  def destroy

  end
end
