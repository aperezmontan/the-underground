get '/' do 
  if params[:error]
    @error = 'Something Went Wrong w/ what you were doing'
  end

  erb :index
end

