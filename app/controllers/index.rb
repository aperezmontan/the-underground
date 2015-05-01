get '/' do 
  if params[:error]  require_logged_in

    @error = 'Something Went Wrong w/ what you were doing'
  end

  erb :index
end

