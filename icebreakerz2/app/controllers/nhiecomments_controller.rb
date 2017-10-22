class NhiecommentsController < ApplicationController
  before_action :authorize

	def create

	@post = Nhiepost.find(params[:nhiepost_id])
	@comment = @post.nhiecomments.create(params[:nhiecomment].permit(:name, :body))
	redirect_to post_path(@post)
end

def destroy
	@post = Nhiepost.find(params[:nhiepost_id])
	@comment = @post.comments.find(params[:id])
	@comment.destroy
	redirect_to post_path(@post)
end

end
