require "sinatra/base"
require "sinatra_more/markup_plugin"
require "slim"
require "sass"
require "active_record"



module SinatraStudy
  ActiveRecord::Base.establish_connection(
    'adapter' => 'sqlite3',
    'database' => './bbs.db'
  )

  class Comment < ActiveRecord::Base
  end

  class App < Sinatra::Base
    register SinatraMore::MarkupPlugin

    before do
      @site_name = 'SinatraStudy'
      @nav = ['index', 'about', 'gallery']
    end

    get '/' do
      @comments = Comment.order("id desc").all
      @title = 'BBS'
      slim :index
    end

    post '/new' do
      Comment.create({:body => params[:body]})
      redirect '/'
    end

    post '/delete' do
      Comment.find(params[:id]).destroy
    end
  end
end