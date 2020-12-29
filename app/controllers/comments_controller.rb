class CommentsController < ApplicationController
  def index
    @task = Task.find(params[:task_id])
    @comments = Comment.all
  end

  def new
    @task = Task.find(params[:task_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @task = Task.find(params[:task_id])
    @comment.task = @task
    if @comment.save
      redirect_to task_comments_path
    else
      render "new"
    end
  end


  def show
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    authorize @comment
    redirect_to task_comments_path
  end

  private
  
  def comment_params
    params.require(:comment).permit(:task_id, :content)
  end
end
