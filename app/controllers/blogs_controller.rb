class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :show, :update, :destroy]
  def index
    @blogs = Blog.all
  end
  def new
    @blog = Blog.new
  end
  def create
    if params[:back]
      @blog = current_user.blogs.build(blog_params)
      render :new
    else
      @blog = current_user.blogs.build(blog_params)
      if @blog.save
        redirect_to blogs_path, notice: "Post created"
      else
        render :new
      end
    end
  end
  def edit
  end
  def show
  end
  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "Post updated"
    else
      render :edit
    end
  end
  def confirm
    @blog = current_user.blogs.build(blog_params)
    render :new if @blog.invalid?
  end
  private
  def set_blog
    @blog = Blog.find(params[:id])
  end
  def blog_params
    params.require(:blog).permit(:content, :image, :image_cache)
  end
end
