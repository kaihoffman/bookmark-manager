require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Hi and welcome to the Bookmark Manager app"
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:bookmarks)
  end

  run! if app_file == $0
end
