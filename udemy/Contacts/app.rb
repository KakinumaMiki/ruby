require 'rubygems'
require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "contacts.sqlite3"}
enable :sessions

class Contact < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
end

get '/' do
  @now = Time.now
  @contacts = Contact.where.not(email: [nil, ''])
  @message = session.delete :message
  erb :index
end

get '/contact_new' do
  @contact = Contact.new
  erb :contact_form
end

post '/contacts' do
  puts '### 送信されたデータ ###'
  p params
  name = params[:name]

  # DBに保存
  @contact = Contact.new({name: name, email: params[:email], phone: params[:phone]})
  if @contact.save
    # ture
    session[:message] = "#{name}さんを作成しました"
    redirect '/'
  else
    # false
    erb :contact_form
  end


end
