class NhiecommentsController < ApplicationController
  

	def create

	@post = Nhiepost.find(params[:nhiepost_id])
	@comment = @post.nhiecomments.create(params[:nhiecomment].permit(:name, :body))
	redirect_to post_path(@post)
	@print = Nhiepost.find(params[:nhiepost_id]).nhiecomments
end

def destroy
	@post = Nhiepost.find(params[:nhiepost_id])
	@comment = @post.comments.find(params[:id])
	@comment.destroy
	redirect_to nhiepost_path(@post)
end

end
