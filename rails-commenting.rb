# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# ---1) This class holds restfull routes that can create, read, update and destroy a database. It is created by typhing rails g controller inside the terminal
class BlogPostsController < ApplicationController
  
  def index
    # ---2) The variable post gets past on to the home page and shows all data inside the table of the Blogpost.
    @posts = BlogPost.all
  end

  # ---3) This is use to show the information on the selected data. The id will be pass on to the parameter of the Blogpost once the data has been clicked.
  def show
    @post = BlogPost.find(params[:id])
  end

  # ---4) Creates a form that a user can use to make a new data that will be stored insided database once submitted.
  def new
    @post = BlogPost.new
  end

  def create
    # ---5) This will create the information from the form that the user type and save all the information inside the database.
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  def edit
    # ---6) Redirect you to the data's information you seleceted, then have the option to change the information you want to change.
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # ---7) After editing the data, this will replace the information in the database after pressing the submit button that you created.
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to edit_blog_post_path
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # ---8) If data you are trying to delete is not deleted, then it would just bring you back to the infomation page of the data you are already in.
      redirect_to blog_post_path(@post)
    end
  end

  # ---9) Any function below private cannot be access outside this class. It can only be use inside this class as a local function.
  private
  def blog_post_params
    # ---10) Use to protect the database from users trying to add another data other than the data already inside the database.
    params.require(:blog_post).permit(:title, :content)
  end
end
