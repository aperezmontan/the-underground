get '/' do 
   require_logged_in

  if params[:error]     
    @error = 'Something Went Wrong w/ what you were doing'
  end

  erb :index
end

