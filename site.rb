%w(rubygems sinatra haml sass sinatra/cache).each {|r| require r}

############### CLASSES & METHODS ###############





################# CONFIGURATION #################

configure do
  set :root, "#{File.dirname(__FILE__)}/views"
  set :public, "#{File.dirname(__FILE__)}/public"
  set :views, "#{File.dirname(__FILE__)}/views"
  set :cache_output_dir, "#{File.dirname(__FILE__)}/public/system/cache"
  set :haml, {:format => :html5 }
  set :environment, :development
  #set :cache_enabled, true  # turn on sinatra-cache
end

helpers do

end

get '/:page/styles.css' do
  content_type 'text/css', :charset => 'utf-8'
  @path = "sass/#{params[:page]}/#{params[:page]}-styles"
  sass @path.to_sym
end

#################### ROUTES ####################

get '/' do
  @page = 'home'
  haml :home
end

get '/blog' do
  redirect 'http://tumble.dasmith.co.uk'
end

#Render any other pages according to name

get '/:page' do
  begin
    @page = params[:page]
    haml @page.to_sym
  rescue Exception => e
    @page = 'error'
    status 404
    haml :_404
  end
end