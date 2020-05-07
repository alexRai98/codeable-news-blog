require "sinatra"
require "sinatra/reloader" if development?
require "lazyrecord"
require_relative "model/post"

get "/" do
    @title="Landing Page"
    erb :index
end

get "/blog" do
    @title="Codeable Blog"
    @posts = Post.all
    erb :blog
end
get "/blog/new" do
    erb :new_post
end
post "/blog/new" do 
    Post.create(params[:title],params[:author],params[:image],params[:body])
    redirect url("/blog/new") 
end