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
  private
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
