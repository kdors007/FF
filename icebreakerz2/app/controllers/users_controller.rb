class UsersController < ApplicationController

def index
	@post = Post.order('random()').first
    rando()	
    @post2 = Nhiepost.order('random()').first
    rando1()
end

def new
end

def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to '/'
  else
    redirect_to '/signup'
  end
end


private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

def rando
	@random_article = Post.order('random()').first
end

def rando1
	@random_article = Nhiepost.order('random()').first
end

end

