#Get Login Form
get '/session/new' do
  erb :login
end

#Login User
post '/session' do

  # require 'pry'; binding.pry
  cur_user = User.find_by(email: params[:email])
  if cur_user && cur_user.authenticate( params[:password] )
      
      if request.xhr?
        erb :'users/index'      
      else
        session[:user_id] = cur_user.id
        redirect '/users'
      end

  else
    return [401, "Unauthorized"] if request.xhr?
    redirect '/?error=ua'
  end

end

#Logout User
post '/session/end' do
  session[:user_id] = nil
  redirect '/'
end
