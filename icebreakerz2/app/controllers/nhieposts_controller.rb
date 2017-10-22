class NhiepostsController < ApplicationController



def index
	@post = Nhiepost.new
    rando()
end

def show
	@post = Nhiepost.find(params[:id])
	rando()
end

def create
	@post = Nhiepost.new(post_params)
	if @post.save
		redirect_to @post
	else
		render "new"
	end
end

private

def post_params

	params.require(:post).permit(:question)

end

private

def rando
	@random_article = Nhiepost.order('random()').first
end


end
