get '/' do 
  erb :index
end

get '/advice' do
  p params 
  "WE DID SOMETHING COOL" 
end

post '/say_advice' do 
  p params
  redirect "/advice"
end

