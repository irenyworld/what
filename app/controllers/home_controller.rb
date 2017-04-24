class HomeController < ApplicationController
  def index
  end
  
  def improve
  end
  
  def memory
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
      redirect_to '/share'
    else
      
    render :text => post.errors.messages
    end
    
  end


  
  def reply_create
    @reply = Reply.new(post_id: params[:post_id], content: params[:content])
    @reply.save
    redirect_to :back

  end
  
end









