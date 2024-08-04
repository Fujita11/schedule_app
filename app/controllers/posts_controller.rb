class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.find_by(id: params[:id])
    @today = Date.today
    @total_posts = @posts.count
  end

  def create
    @post = Post.new(post_params)
    # redirect_to '/posts'
    if @post.save
      flash[:notice] = "新規投稿に成功しました"
      redirect_to posts_path
    else
      flash[:notice] = "新規投稿に失敗しました"
      render :new
    end
  end

  def post_params
    params.require(:post).permit(:content, :start_datetime, :end_datetime, :is_all_day, :memo)
  end
  # content: params[:content]
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def show
    # @post = Post.find(params[:id])
    # @id = params[:id]
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(post_params)
      flash[:notice] = "投稿の編集に成功しました"
      redirect_to posts_path
    else
      flash[:notice] = "投稿の編集に失敗しました"
      render :edit
    end
  end

  # def update
  #   @post = Post.new(post_params)
  #   @post.content = params[:content]
  #   if @post.save
  #     redirect_to '/posts'
  #   else
  #     redirect_to("/posts/#{@post.id}/edit")
  #   end
  # end

  #   @post.save
  #   redirect_to '/posts'
  # end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    # redirect_to("/posts/index")
    redirect_to '/posts'
  end
end