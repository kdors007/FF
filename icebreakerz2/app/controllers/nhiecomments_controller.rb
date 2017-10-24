class NhiecommentsController < ApplicationController
  

	def create

	@post3 = Nhiepost.find(params[:nhiepost_id])
	@nhiecomments = @post3.nhiecomments.create(params[:nhiecomment].permit(:name, :body, :user_id))
	redirect_to nhiepost_path(@post3)
end

def destroy
	@post3 = Nhiepost.find(params[:nhiepost_id])
	@comment = @post3.comments.find(params[:id])
	@comment.destroy
	redirect_to nhiepost_path(@post3)
end

end
