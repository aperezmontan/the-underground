# Register User
post '/users' do
    require_logged_in

  new_user = User.new(user_params params[:user])

  if new_user.save
    session[:user_id] = new_user.id
    redirect '/users'
  else
    redirect back
  end
end

get '/confirmed' do
  'You Have Been Added Successfully'
end

get '/users' do 
  users = User.all()
  erb :'users/index', locals: { users: users}  
end

get '/users/:id' do
  user = User.find_by(id: params[:id])

  return [500,"No user by that ID found"] unless user
  erb :'/users/show', locals: {user: user}
end

delete '/users/:id' do
  user = User.find_by(id: params[:id])
  return [500,"No user by that ID found"] unless user

  user.destroy

  redirect '/users'
end

####

def user_params params
  params.each_with_object({}) do |(key,value), obj|
    obj[key] = value if valid_params.include?(key.to_sym)
  end
end

def valid_params
  [:first_name, :last_name, :age, :email, :password]
end
