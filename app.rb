require 'sinatra'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Hi and welcome to the Bookmark Manager app"
  end

  run! if app_file == $0
end
