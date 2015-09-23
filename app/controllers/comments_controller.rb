class CommentsController < ApplicationController

  def index
    render template: 'comments/index.html.erb', locals: { comments: Comment.all }
  end

  # def show

  # end

  def new
    post_options = Post.order(id: :asc).map { |p| [p.id] }
    render template: 'comments/new.html.erb', locals: {
      comment: Comment.new,
      post_options: post_options
    }
  end

  def create
    comment = Comment.new
    comment.message = params.fetch(:comment).fetch(:message)
    comment.post_id = params.fetch(:comment).fetch(:post_id)
    if comment.save
      redirect_to comment_path(comment)
    else
      redirect_to posts_path
    end
  end

  def update

  end

  def destroy

  end
end
