require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    "Hi and welcome to the Bookmark Manager app"
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:bookmarks)
  end

  post '/add-bookmark' do
    url = params['url']
    title = params['title']
    Bookmark.create_new_bookmark(url, title)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
