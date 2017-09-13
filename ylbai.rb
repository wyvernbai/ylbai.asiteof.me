# encoding: utf-8

require "sinatra/base"
require "redcarpet"
require "erb"
require "sequel"
require "rakismet"
require "mail"
require "fileutils"

Sinatra::Base.set :markdown, 
                  :autolink           => true,
                  :fenced_code_blocks => true,
                  :strikethrough      => true,
                  :superscript        => true,
                  :layout_engine      => :erb
class YalongBai< Sinatra::Application

  Tilt.register Tilt::RedcarpetTemplate::Redcarpet2, 'markdown', 'mkd', 'md'

  set :root, File.dirname(__FILE__)
  set :view_path    => File.join(root,'views')
  set :public_path  => File.join(root,'public')
  set :archive_path => File.join(root,'views','archives')
  set :port, 4568

  layout 'background'

  get "/" do
    erb :ylbai
  end

  get "/autoset" do
    erb :autoset
  end

  get "/autoda" do
    erb :autoDA
  end
end
