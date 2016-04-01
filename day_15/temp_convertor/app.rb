require "sinatra"
require "sinatra/reloader"
require "pony"

# DSL: Domain Specific Language

enable :sessions
use Rack::MethodOverride

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'supersecret']
  end
end

get "/" do
  if session[:visit_count]
    session[:visit_count] += 1
  else
    session[:visit_count] = 1
  end
  # erb :index, layout: :app_layout
  erb(:index, {layout: :app_layout})
end

get "/converter" do
  erb(:converter, {layout: :app_layout})
end

post '/convert' do
  @temp_f = params[:temp_f].to_f
  @temp_c = ((@temp_f - 32) * 5 / 9).round(2)
  session[:last_temp] = @temp_c
  erb(:converter, {layout: :app_layout})
end

get "/secret" do
  protected!
  "Super Secret"
end

get "/about" do
  redirect to("/about-us")
end

get "/about-us" do
  erb(:about_us, {layout: :app_layout})
end

delete "/reset_visit_count" do
  session[:visit_count] = 0
  # redirect to("/")
  redirect back
end
