class CommentsController < ApplicationController


def create
	
	@post_wyr = Post.find(params[:post_id])
	@comment = @post_wyr.comments.create(params[:comment].permit(:name, :body, :user_id))
	redirect_to post_path(@post_wyr)
end

def destroy
	@post_wyr = Post.find(params[:post_id])
	@comment = @post_wyr.comments.find(params[:id])
	@comment.destroy
	redirect_to post_path(@post_wyr)
end


end
