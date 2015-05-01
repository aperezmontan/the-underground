#Get Login Form
get '/session/new' do
  erb :login
end

#Login User
post '/session' do
    require_logged_in

  cur_user = User.find_by(email: params[:email])
  if cur_user && cur_user.authenticate( params[:password] )
    session[:user_id] = cur_user.id
    redirect '/users'
  else
    redirect '/?error=ua'
  end
end

#Logout User
post '/session/end' do
  session[:user_id] = nil
  redirect '/'
end
