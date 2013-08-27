get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}" 

  # Look in app/views/index.erb
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @price = params[:post][:price]
  erb :post_cool_url
end
