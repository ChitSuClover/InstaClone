class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :show, :update, :destroy]
  def index
    @blogs = Blog.all
  end
  def new
    @blog = Blog.new
  end
  def create

  end
  def edit
  end
  def show
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
