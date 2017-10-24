class NhiepostsController < ApplicationController


def index
	@post2 = Nhiepost.new
    rando1()
end

def show
	@post2 = Nhiepost.find(params[:id])
	rando1()
end

def create
	@post2 = Nhiepost.new(post2_params)
	if @post2.save
		redirect_to @post2
	else
		render "new"
	end
end

private

def post_params1

	params.require(:nhiepost).permit(:question)

end

def rando1
	@random_article1 = Nhiepost.order('random()').first
end


end
