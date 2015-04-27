#Create New User Route
post '/users' do
  new_user = User.new()
  new_user.first_name = params[:first_name]
  new_user.last_name  = params[:last_name]
  new_user.email      = params[:email]
  new_user.age        = params[:age]

  redirect '/confirmed' if new_user.save
  redirect back 
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

#Create User Delete Route

