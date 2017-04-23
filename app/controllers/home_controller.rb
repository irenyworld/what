class HomeController < ApplicationController
  def index
  end
  
  def improve
  end

  def truthmyth
  end
  
  def dream
  end
  
  def contact
  end
  
  def share
    @posts = Post.all
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save

    if post.save
      redirect_to '/home/share'
    else
      
    render :text => post.errors.messages
    end
    
  end


  
  def reply_create
    reply = Reply.new
    reply.content = params[:content]
    reply.post_id = params[:id_of_post]
    reply.save
    redirect_to '/home/share'

  end
  
end









