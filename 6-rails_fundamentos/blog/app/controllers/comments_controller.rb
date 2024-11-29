class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = 'Comentário criado com sucesso'
      redirect_to post_path(@post)
    else
      flash[:alert] = 'Comentário não pode ser criado'
      redirect_to post_path(@post)
    end
  end

  def update
    @comment = @post.comments.find(params[:id])

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to post_url(@post), notice: 'Comentário atualizado com sucesso' }
      else
        format.html { redirect_to post_url(@post), alert: 'Comentário não pode ser atualizado' }
      end
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    flash[:notice] = 'Comentário deletado com sucesso'
    redirect_to post_path(@post)
  end
  
  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
